using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace John_Janzen_COSC295_A2
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class AddNewOppenent : ContentPage
    {
        public AddNewOppenent()
        {
            InitializeComponent();
            // Create the tableview 
            TableView tableView = new TableView();

            TableRoot root = new TableRoot();
            TableSection section = new TableSection();

            // Create the labels and entries for the table
            Label lblFirst = new Label { Text = "First Name: " };
            Entry eFirst = new Entry {HorizontalOptions = LayoutOptions.FillAndExpand };

            Label lblLast = new Label { Text = "Last Name: " };
            Entry eLast = new Entry { HorizontalOptions = LayoutOptions.FillAndExpand };
            
            Label lblAddress = new Label { Text = "Address: " };
            Entry eAddress = new Entry { HorizontalOptions = LayoutOptions.FillAndExpand };
            
            Label lblPhone = new Label { Text = "Phone: " };
            Entry ePhone = new Entry { HorizontalOptions = LayoutOptions.FillAndExpand };
            
            Label lblEmail = new Label { Text = "Email: " };
            Entry eEmail = new Entry { HorizontalOptions = LayoutOptions.FillAndExpand };

            
            Button btnSave = new Button { Text = "Save" };
            // On click to save the new oppenent when clicked
            btnSave.Clicked += (s, e) =>
            {
                // Create the oppenent item
                Oppenents item = new Oppenents
                {
                    FirstName = Convert.ToString(eFirst.Text),
                    LastName = Convert.ToString(eLast.Text),
                    Address = Convert.ToString(eAddress.Text),
                    Phone = Convert.ToString(ePhone.Text),
                    Email = Convert.ToString(eEmail.Text),
                };
                // Save it to the db
                App.GameDB.SaveOppenent(item);
            };

            // Add the ui elements to the screen
            section.Add(new ViewCell { View = new StackLayout { Orientation = StackOrientation.Horizontal, Children = { lblFirst, eFirst } } });
            section.Add(new ViewCell { View = new StackLayout { Orientation = StackOrientation.Horizontal, Children = { lblLast, eLast } } });
            section.Add(new ViewCell { View = new StackLayout { Orientation = StackOrientation.Horizontal, Children = { lblAddress, eAddress } } });
            section.Add(new ViewCell { View = new StackLayout { Orientation = StackOrientation.Horizontal, Children = { lblPhone, ePhone } } });
            section.Add(new ViewCell { View = new StackLayout { Orientation = StackOrientation.Horizontal, Children = { lblEmail, eEmail} } });
            
           

            root.Add(section);
            tableView.Root = root;
            // Layout to hold the table and the add button at the bottom
            StackLayout layout = new StackLayout
            {
                Children = { tableView, btnSave },
                VerticalOptions = LayoutOptions.FillAndExpand,
            };

            Content = layout;

        }
    }
}