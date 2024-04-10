﻿using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace X07ListView
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            // Need the new navigation page for the nav to work. 
            MainPage = new NavigationPage(new FruitListPage());
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
