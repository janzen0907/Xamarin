using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using SQLite;

namespace John_Janzen_COSC295_A2
{
    public partial class App : Application
    {

        static GameDatabase database;

        public static GameDatabase GameDB     // this is helpful in other pages, as App.Database is now available in other pages.
        {
            get
            {
                if (database == null)   // check if database is already connected
                {
                    database = new GameDatabase(DependencyService.Get<IFileHelper>().GetLocalFilePath("GamesSQLite.db3"));
                }
                return database;
            }
        }

        public App()
        {
            InitializeComponent();

            MainPage = new NavigationPage(new OppenentsPage());
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

    public interface IFileHelper
    {
        string GetLocalFilePath(string filename);
    }
}
