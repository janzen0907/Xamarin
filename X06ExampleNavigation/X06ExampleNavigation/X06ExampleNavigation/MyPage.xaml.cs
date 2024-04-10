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
    public partial class MyPage : ContentPage
    {
        public MyPage(String name)
        {
            InitializeComponent();
            showName.Text = name;

            btnCloseModal.Clicked += (sender, e) => { Navigation.PopModalAsync(); };
        }
    }
}