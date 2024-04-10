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
    public partial class SettingsPage : ContentPage
    {
        public SettingsPage()
        {
            InitializeComponent();
            Title = "Settings";

            Button resetButton = new Button
            {
                Text = "Reset App",
                HorizontalOptions = LayoutOptions.Center,
                VerticalOptions = LayoutOptions.CenterAndExpand
            };

            resetButton.Clicked += (sender, e) =>
            {
                // Reset the app by dropping and recreating tables
                App.GameDB.ResetApp();
                DisplayAlert("Success", "App has been reset to default data.", "OK");
            };

            Content = new StackLayout
            {
                Children = { resetButton },
                VerticalOptions = LayoutOptions.CenterAndExpand
            };
        }
    }
}