using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace X02_SimpleLayout
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            //comment out code after this line and uncomment it to get MainPage.xaml example to show up
            //MainPage = new MainPage();

            StackLayout layout = new StackLayout { HorizontalOptions = LayoutOptions.CenterAndExpand, VerticalOptions = LayoutOptions.CenterAndExpand};
            Label label = new Label {  Text = "Click the Button"} ;
            Button btnClick = new Button { Text = "Click me" };
            layout.Children.Add(label);
            layout.Children.Add(btnClick);
          
            MainPage = new ContentPage { Content = layout };
            
            btnClick.Clicked += (sender, e) =>
            {
                label.Text = "You clicked the button";
                MainPage.BackgroundColor = new Color(150, 0, 150);
            };

            
        }

        private void BtnClick_Clicked(object sender, EventArgs e)
        {
            throw new NotImplementedException();
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
