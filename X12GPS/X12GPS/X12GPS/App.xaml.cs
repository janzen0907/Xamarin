using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin.Essentials;
using System.Collections.ObjectModel;

namespace X12GPS
{
    public partial class App : Application
    {
        Label lbLoc = new Label { Text = "Waiting" };
        ObservableCollection<Location> locations = new ObservableCollection<Location>();    

        private async void checkLocation()
        {
            try 
            {
                Location location = await Geolocation.GetLocationAsync(); // can return null if no location
                if (location != null)
                {
                    locations.Add(location);
                    lbLoc.Text = location.Latitude + " " + location.Longitude;
                }
            } 
            catch (FeatureNotSupportedException) { }
            catch (FeatureNotEnabledException) { }
            catch (PermissionException) { }
            catch (Exception) { }
        }

        public App()
        {
            InitializeComponent();

            checkLocation();
            Button btnCheck = new Button { Text = "Read location" };
            btnCheck.Clicked += (s, e) =>
            {
                checkLocation();
            };

            ListView lstLocs = new ListView 
            {
                ItemsSource = locations,
            };

            lstLocs.ItemTapped += (sender, e) =>
            {
                ((Location)e.Item).OpenMapsAsync();
                //Map.OpenAsync();
            };

            MainPage = new ContentPage {Content = new StackLayout { Children = { lbLoc, btnCheck, lstLocs } } };
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
}
