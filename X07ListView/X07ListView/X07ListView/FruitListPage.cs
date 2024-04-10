using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace X07ListView
{
    public class FruitListPage : ContentPage
    {
        public FruitListPage()
        {
            // This will be the item source for the list view
            ObservableCollection<Fruit> list = new ObservableCollection<Fruit>
            {
                new Fruit { Name = "Apple", Desc = "Red" },
                new Fruit { Name = "Banana", Desc = "Yellow" },
                new Fruit { Name = "Orange", Desc = "Orange" },
            };

            ListView listView = new ListView
            {
                ItemsSource = list,
                // Assign the cell template we created below as the template for each row in the list view
                ItemTemplate = new DataTemplate(typeof(FruitCell)),
                RowHeight = FruitCell.RowHeight
            };

            listView.ItemTapped += (sender, e) =>
            {
                listView.SelectedItem = null; //deselect the item 
                Navigation.PushAsync(new FruitDetailPage(e.Item as Fruit));
                // Have to cast to get the remove methods and such with the list

                // this would work as well but we might not always be able to so assume i need to cast 
                // list.Remove(e.Item as Fruit);
            };

            Title = "Fruit List";

            StackLayout layout = new StackLayout();
            layout.Children.Add(listView);


            Entry eName = new Entry();
            Entry eDesc = new Entry();
            Button btnNew = new Button { Text = "Save New Fruit" };
            btnNew.Clicked += (sender, e) =>
            {
                Fruit f = new Fruit { Name = eName.Text, Desc = eDesc.Text };
                list.Add(f);
                eName.Text = "";
                eDesc.Text = "";
            };

            layout.Children.Add(eName);
            layout.Children.Add(eDesc);
            layout.Children.Add(btnNew);

            // The following is an example of how to use pull to refresh
            ListView listView2 = new ListView
            {
                ItemsSource = GetTime(), // method that gets our data, generally would be a DB
                // Just having pull to refresh will make the app be stuck in a refresh, more steps below
                IsPullToRefreshEnabled = true, // set it to true then tell it what to do
            };

            // Deal with a refresh
            listView2.Refreshing += (sender, e) =>
            {
                // handle what to do in the event of a refresh
                listView2.ItemsSource = GetTime();
                listView2.EndRefresh();
            };

            layout.Children.Add(listView2);
            Content = layout;
        }

        // just a nonsense method to get some "data" to show in the list
        // This method would generally be to get data, perhaps from a database.
        private List<string> GetTime()
        {
            List<string> list = new List<string>();
            
            list.Add(DateTime.Now.ToString());
            list.Add(DateTime.Now.ToString());
            list.Add(DateTime.Now.ToString());
            list.Add(DateTime.Now.ToString());
            
            return list;
        }
    }

    public class FruitCell : ViewCell
    {
        public const int RowHeight = 55;
        public FruitCell()
        {
            // typically do two tasks here: 1) Create a Layout for the View and 2) bind any dynamic labels (etc)
            // to properties that will display
            Label lblName = new Label { FontAttributes = FontAttributes.Bold };
            lblName.SetBinding(Label.TextProperty, "Name");
            Label lblDesc = new Label { TextColor = Color.Gray };
            lblDesc.SetBinding(Label.TextProperty, "Desc");

            View = new StackLayout // same idea as setting Content = xyz in content page.
            {
                Spacing = 2, 
                Padding = 5,
                Children = { lblName, lblDesc },
            };

            // Context Action
            MenuItem mi = new MenuItem { Text = "Delete", IsDestructive = true };
            mi.Clicked += (sender, e) =>
            {
                // Tje listview is accessible through the Parent Property - The view that contains it
                ListView lv = (ListView) this.Parent;
                ((ObservableCollection<Fruit>)lv.ItemsSource).Remove(BindingContext as Fruit);
            };
            ContextActions.Add(mi);
            
        }
    }
}