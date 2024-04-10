using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace X04_GridLayout
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            // MainPage = new MainPage(); // comment out lines below and uncomment this line to return to using MainPage.xaml
            


            Grid grid = new Grid
            {
                RowDefinitions =
                {
                    new RowDefinition(),
                    new RowDefinition(),
                    new RowDefinition()
                },
                ColumnDefinitions =
                {
                    new ColumnDefinition(),
                    new ColumnDefinition(),
                    new ColumnDefinition()
                }
            };

            StackLayout topStack = new StackLayout { Margin = new Thickness(30,30,30,30), VerticalOptions = LayoutOptions.Center};
            StackLayout innerStack = new StackLayout{ Orientation = StackOrientation.Horizontal};

            topStack.Children.Add(innerStack);
            topStack.Children.Add(grid);


            innerStack.Children.Add(new Label
            {
                Text = "Output: "
            });

            Button btn1 = new Button { Text = "6" };
            Button btn2 = new Button { Text = "2" };
            Label lblResult = new Label { Text = "", HorizontalOptions = LayoutOptions.Center };

            grid.Children.Add(btn1, 0, 0);
            grid.Children.Add(btn2, 0, 1);
            btn1.Clicked += (sender, e) => { lblResult.Text += btn1.Text;  };
            btn1.Clicked += (sender, e) => { lblResult.Text += btn2.Text;  };


            grid.Children.Add(new Button {Text = "1", }, 0, 0);
            grid.Children.Add(new Button {Text = "2", }, 0, 1);
            grid.Children.Add(new Button{Text = "3", }, 0, 2);
            grid.Children.Add(new Button {Text = "4", }, 1, 0);
            grid.Children.Add(new Button { Text = "5", }, 1, 1);
            grid.Children.Add(new Button { Text = "6", }, 1, 2);
            grid.Children.Add(new Button { Text = "7", }, 2, 0);
            grid.Children.Add(new Button { Text = "8", }, 2, 1);
            grid.Children.Add(new Button { Text = "9", }, 2, 2);
            grid.Children.Add(new Button {Text = "0",}, 3, 1);
            grid.Children.Add(new Button {Text = "+", }, 4, 0);
            grid.Children.Add(new Button {Text = "-",}, 4, 1);
            grid.Children.Add(new Button {Text = "=", }, 4, 2);

            MainPage = new ContentPage { Content = topStack};


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
