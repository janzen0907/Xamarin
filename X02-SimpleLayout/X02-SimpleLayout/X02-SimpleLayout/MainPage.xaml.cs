using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace X02_SimpleLayout
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();

            btnClick.Clicked += (sender, e) =>
            {
                lblResult.Text = "You clicked the button";
                this.BackgroundColor = new Color(150, 0, 150);
            };
        }
    }
}
