using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace X06ExampleNavigation
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MyPersonPage : ContentPage
    {
        public MyPersonPage(Person person)
        {
            InitializeComponent();
            person.lastName = "Changed";
            btnClose.Clicked += (sender, e) => { Navigation.PopModalAsync(); };

        }
    }
}