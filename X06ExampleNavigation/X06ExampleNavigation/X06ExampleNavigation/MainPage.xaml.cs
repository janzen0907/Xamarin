using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.ExceptionServices;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace X06ExampleNavigation
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();

            Person[] people = new Person[]
        {
            new Person("Jane", ""),
            new Person("Bob", ""),
            new Person("Joe", "")
        };

            btnBob.Clicked += (sender, e) => { Navigation.PushModalAsync(new MyPage(btnBob.Text)); };
            btnJane.Clicked += (sender, e) => { Navigation.PushModalAsync(new MyPage(btnJane.Text)); };
            btnJoe.Clicked += (sender, e) => { Navigation.PushModalAsync(new MyPage(btnJoe.Text)); };
            


            btnBob2.Clicked += (sender, e) => { people[1].lastName = "Changed";  };
            btnJane2.Clicked += (sender, e) => { people[0].lastName = "Changed";  };
            btnJoe2.Clicked += (sender, e) => { people[2].lastName = "Changed";  };

            btnChanges.Clicked += (sender, e) =>
            {
                btnJoe2.Text = people[2].firstName + " " + people[2].lastName;
                btnBob2.Text = people[1].firstName + " " + people[1].lastName;
                btnJane2.Text = people[0].firstName + " " + people[0].lastName;
            };
 
        }

        protected override void OnAppearing()
        {
            btnJoe2.Text = people[2].firstName + " " + people[2].lastName;
            btnBob2.Text = people[1].firstName + " " + people[1].lastName;
            btnJane2.Text = people[0].firstName + " " + people[0].lastName;
            base.OnAppearing();
        }



    }

    public class Person
    {
        public string firstName = "";
        public string lastName = "";

        public Person(string fName, string lName)
        {
            firstName = fName;
            lastName = lName;
        }
    }
}
