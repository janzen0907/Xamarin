using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace X03___Simple_Calculator
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();

            btnClick.Clicked += (sender, e) =>
            {
                switch (opPicker.SelectedItem.ToString()) 
                {
                    case "Add":
                        result.Text = (Convert.ToDouble(val1.Text) + Convert.ToDouble(val2.Text)).ToString();
                        break;
                    case "Subtract":
                        result.Text = (Convert.ToDouble(val1.Text) - Convert.ToDouble(val2.Text)).ToString();
                        break;
                    case "Divide":
                        result.Text = (Convert.ToDouble(val1.Text) / Convert.ToDouble(val2.Text)).ToString();
                        break;
                    case "Multiply":
                        result.Text = (Convert.ToDouble(val1.Text) * Convert.ToDouble(val2.Text)).ToString();
                        break;
                }
            };
            opPicker.SelectedIndex = 0;
        }
    }
}
