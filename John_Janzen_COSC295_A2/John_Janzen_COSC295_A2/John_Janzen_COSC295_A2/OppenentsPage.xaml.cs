using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace John_Janzen_COSC295_A2
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class OppenentsPage : ContentPage
    {

        ObservableCollection<Oppenents> oppList;
        public OppenentsPage()
        {
            InitializeComponent();

            oppList = new ObservableCollection<Oppenents>(App.GameDB.GetOpps());

            Title = "Oppenents";

            ToolbarItems.Add(new ToolbarItem
            {
                Text = "Games",
                Command = new Command(OnGamesClicked)
            });

            ToolbarItems.Add(new ToolbarItem
            {
                Text = "Settings",
                Command = new Command(OnSettingsClicked)
            });


            ListView viewOpps = new ListView
            {
                ItemsSource = oppList,
                //TODOL Create Oppenent Cell
                ItemTemplate = new DataTemplate(typeof(OppenentCell)),
                RowHeight = 50

            };

            viewOpps.ItemTapped += (s, e) =>
            {
                viewOpps.SelectedItem = null;
                //TODO: Create matches page
                Navigation.PushAsync(new MatchesPage((Oppenents)e.Item));
            };
            StackLayout layout = new StackLayout {  Orientation = StackOrientation.Vertical };

            Button newOppBtn = new Button { Text = "Add New Oppenent" };

            newOppBtn.Clicked += (s, e) =>
            {
                Navigation.PushAsync(new AddNewOppenent());
 
            };

            layout.Children.Add(viewOpps);
            layout.Children.Add(newOppBtn);
            Content = layout;
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();

            oppList.Clear();

            foreach (var opponent in App.GameDB.GetOpps())
            {
                oppList.Add(opponent);
            }
        }

        private async void OnGamesClicked()
        {
            await Navigation.PushAsync(new GamesPage());
        }
        
        private async void OnSettingsClicked()
        {
            await Navigation.PushAsync(new SettingsPage());
        }
    }

    public class OppenentCell : ViewCell
    {
        public OppenentCell()
        {
            Label lblFirst = new Label();
            Label lblLast = new Label();
            Label lblPhone = new Label();

            lblFirst.SetBinding(Label.TextProperty, "FirstName");
            lblLast.SetBinding(Label.TextProperty, "LastName");
            lblPhone.SetBinding(Label.TextProperty, "Phone");

            StackLayout nameLayout = new StackLayout { Orientation = StackOrientation.Horizontal };
            nameLayout.Children.Add(lblFirst);
            nameLayout.Children.Add(lblLast);

            View = new StackLayout
            {
                Orientation = StackOrientation.Horizontal,
                Spacing = 10,
                Children = { nameLayout, lblPhone },
                HorizontalOptions = LayoutOptions.CenterAndExpand,
                VerticalOptions = LayoutOptions.Center,
            };

            MenuItem i = new MenuItem { Text = "Delete", IsDestructive = true};
            i.Clicked += (sender, e) =>
            {
                ListView listView = (ListView)this.Parent;
                ((ObservableCollection<Oppenents>)listView.ItemsSource).Remove(BindingContext as Oppenents);
            };
            ContextActions.Add(i);



        }
    }
}