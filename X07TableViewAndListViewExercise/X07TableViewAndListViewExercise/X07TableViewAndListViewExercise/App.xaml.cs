using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace X07TableViewAndListViewExercise
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            MainPage = new NavigationPage(new ToDoPage());
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
