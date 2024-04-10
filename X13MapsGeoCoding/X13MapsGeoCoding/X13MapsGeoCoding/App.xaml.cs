using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin.Forms.Maps;

namespace X13MapsGeoCoding
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();
            Map map = new Map(MapSpan.FromCenterAndRadius(new Position(52.130027, -106.661346), Distance.FromKilometers(0.6)))
            {
                HeightRequest = 200,
                WidthRequest = 960,
                VerticalOptions = LayoutOptions.FillAndExpand, IsShowingUser = true,
            };
            map.Pins.Add(new Pin
            {
                Type = PinType.Place,
                Position = new Position(52.130027, -106.661346),
                Label = "Here we are",
                Address = "Some Address"
            });

            StackLayout stackLayout = new StackLayout {Spacing = 10, Margin = 20};
            stackLayout.Children.Add(new Label { Text = "Map" });
            stackLayout.Children.Add(map);

            Label lblOut = new Label();
            Entry eAddress = new Entry();
            Button btnGeocodeAddress = new Button { Text = "Get Geocoded Position" };
            btnGeocodeAddress.Clicked += async (sender, e) =>
            {
                Geocoder geo = new Geocoder();
                string address = eAddress.Text;
                var positions = await geo.GetPositionsForAddressAsync(address);
                lblOut.Text = "";
                foreach ( var position in positions )
                {
                    lblOut.Text += position.Longitude + " " + position.Latitude + "--";
                    map.MoveToRegion(MapSpan.FromCenterAndRadius(position, Distance.FromKilometers(0.6)));
                    // place a pin at the position
                    map.Pins.Add(new Pin
                    {
                        Type = PinType.Place,
                        Position = position,
                        Label = address,
                        Address = ""
                    });
                }
            };
            stackLayout.Children.Add(lblOut);
            stackLayout.Children.Add(eAddress);
            stackLayout.Children.Add(btnGeocodeAddress);

            Label lblOutputAddress = new Label();
            Entry eLong = new Entry();  
            Entry eLat = new Entry();
            Button btnGeocodePosition = new Button { Text = "Get Geocoded Address" };
            btnGeocodePosition.Clicked += async (s, e) =>
            {
                Geocoder geo = new Geocoder();
                Position position = new Position(Convert.ToDouble(eLat.Text), Convert.ToDouble(eLong.Text));
                var addresses = await geo.GetAddressesForPositionAsync(position);
                lblOutputAddress.Text = "";
                foreach ( var address in addresses )
                {
                    lblOutputAddress.Text += address + "---";
                    map.MoveToRegion(MapSpan.FromCenterAndRadius(position, Distance.FromKilometers(0.6)));
                    map.Pins.Add(new Pin
                    {
                        Type = PinType.Place,
                        Position = position,
                        Label = address,
                        Address = ""
                    });
                }
            };
            stackLayout.Children.Add(new Label { Text = "Latitude" });
            stackLayout.Children.Add(eLat);
            stackLayout.Children.Add(new Label { Text = "Longitude" });
            stackLayout.Children.Add(eLong);
            stackLayout.Children.Add(btnGeocodePosition);
            stackLayout.Children.Add(lblOutputAddress);

            MainPage = new ContentPage {Content = stackLayout };
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
