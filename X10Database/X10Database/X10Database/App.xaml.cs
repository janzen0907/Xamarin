using System;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace X10Database
{
    public partial class App : Application
    {
        static FuelDatabase database; // create an instace of the helper class
        // this is helpful in other pages, as App.Database is now available
        // in other pages
        int MAX_LITRES = 100;
        int MIN_LITRES = 1;
        int MAX_COST = 250;
        double MIN_COST = 0.1;
        public static FuelDatabase Database
        {
            get
            {
                if (database == null) // check if its already connected
                {
                    database = new FuelDatabase(DependencyService.Get<IFileHelper>().GetLocalFilePath("FuelSQLite.db3"));
                }
                return database;
            }
        }

        public App()
        {
            InitializeComponent();

            EntryCell eID = new EntryCell { Label = "ID:"};
            //EntryCell eDate = new EntryCell { Label = "Date:" };
            ViewCell viewCell = new ViewCell();
            DatePicker datePicker = new DatePicker();
            viewCell.View = datePicker;
            ViewCell litresView = new ViewCell();
            ViewCell costView = new ViewCell();
            Label lblLitres = new Label { Text = "0" };
            Label lblCost = new Label { Text = "0" };
            
            //Liters Max is 100, Min is 1
            //Cost Max is 250 and Min is 0.01
            //EntryCell eLitres = new EntryCell { Label = "Litres:" };
            Slider litresSlider = new Slider
            {
                Maximum = MAX_LITRES,
                Minimum = MIN_LITRES,
                HorizontalOptions = LayoutOptions.FillAndExpand
            };
            litresSlider.ValueChanged += (sender, e) =>
            {
                lblLitres.Text = Math.Round(litresSlider.Value, 2).ToString();
            };
            // to set the values of the slider need to put it into its own layour
            litresView.View = new StackLayout
            {
                Orientation = StackOrientation.Horizontal,
                Children = 
                {
                    new Label { Text = MIN_LITRES.ToString() },
                    litresSlider,
                    new Label { Text = MAX_LITRES.ToString() }
                }
            };

            //EntryCell eCost = new EntryCell { Label = "Cost:" };
            Slider costSlider = new Slider
            {
                Maximum = MAX_COST,
                Minimum = MIN_COST,
                HorizontalOptions = LayoutOptions.FillAndExpand
            };

            costSlider.ValueChanged += (sender, e) =>
            {
                lblCost.Text = Math.Round(costSlider.Value, 2).ToString();
            };


            costView.View = new StackLayout
            {
                Orientation = StackOrientation.Horizontal, 
                Children =
                {
                    new Label { Text = MIN_COST.ToString() },
                    costSlider,
                    new Label { Text = MAX_COST.ToString() }
                }
            };

            Button btnSearch = new Button { Text = "Find"};
            btnSearch.Clicked += (s, e) => // find the matching purchase based on the typed in ID
            {
                // We can't use database directly we need to use App.Database
                FuelPurchase purchase = App.Database.GetItem(Convert.ToInt32(eID.Text));
                datePicker.Date = purchase.date; // I was having trouble with this, need to ensure its the correct type
                // eDate.Text = purchase.date.ToString();
                //eLitres.Text = purchase.litres.ToString();
                litresSlider.Value = purchase.litres;
                //eCost.Text = purchase.cost.ToString();
                costSlider.Value = purchase.cost;
            };

            Button btnNew = new Button { Text = "New" };
            btnNew.Clicked += (s, e) => // prepare for a new entry
            {
                eID.Text = "0"; datePicker.Date = DateTime.Now; litresSlider.Value = MIN_LITRES; costSlider.Value = MIN_COST;
            };

            Button btnDelete = new Button { Text = "Delete" };
            btnDelete.Clicked += (s, e) => // deletes a purchase based on what was typed on the interface
            // ID really only matter
            {
                FuelPurchase item = new FuelPurchase
                {
                    ID = Convert.ToInt32(eID.Text),
                    date = datePicker.Date,
                    litres = litresSlider.Value,
                    cost = costSlider.Value,
                };
                App.Database.DeleteItem(item);
            };

            Button btnSave = new Button { Text = "Save" };
            btnSave.Clicked += (s, e) => // perform an insert of update
            {
                FuelPurchase item = new FuelPurchase
                {
                    ID = Convert.ToInt32(eID.Text),
                    date = datePicker.Date,
                    litres = litresSlider.Value,
                    cost = costSlider.Value,
                };
                eID.Text = "0"; datePicker.Date = DateTime.Now; litresSlider.Value = MIN_LITRES; costSlider.Value = MIN_COST;
                
                App.Database.SaveItem(item);
            };

            Picker fuelPicker = new Picker
            {
                ItemsSource = App.Database.GetItems(),
                ItemDisplayBinding = new Binding("date", stringFormat: "{0:D}")
            };
            fuelPicker.SelectedIndexChanged += (s, e) =>
            {
                try
                {
                    FuelPurchase purchase = (FuelPurchase)fuelPicker.SelectedItem;
                    eID.Text = purchase.ID.ToString();
                    datePicker.Date = purchase.date;
                    litresSlider.Value = purchase.litres;
                    costSlider.Value = purchase.cost;
                }
                catch (Exception ex) { }
            };


            MainPage = new ContentPage
            {
                Content = new StackLayout
                {
                    Spacing = 5,
                    Padding = 5,
                    Children =
                    {
                        fuelPicker,
                        new TableView
                        {
                            Intent = TableIntent.Form,
                            Root = new TableRoot
                            {
                                new TableSection("Fuel Purchase")
                                {
                                    eID, viewCell, litresView, costView
                                }
                            }
                        },
                        new StackLayout
                        {
                            Orientation = StackOrientation.Horizontal,
                            Children = {btnSearch, btnNew, btnSave, btnDelete}
                        }
                    }
                }
            };
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
    /// <summary>
    /// How to find where the files are going to go. Helper to decide if we need to use Android or IOS.
    /// </summary>
    public interface IFileHelper
    {
        string GetLocalFilePath(string filename);
    }

}
