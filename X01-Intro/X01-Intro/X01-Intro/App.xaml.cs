using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace X01_Intro
{
    public partial class App : Application
    {
        public static Size ScreenSize;
        public static Label label;
        const int padding = 10;
        const int spacing = 5;
        const int count = 5;

        public App()
        {
            // Almost never put code before this
            InitializeComponent();
            label = new Label { Text = "Size?" };

            // Size of the box that we will use on the screen
            var boxSize = (ScreenSize.Width - 2 * padding + spacing) / count - spacing;
            MainPage = new ContentPage {
                Padding = padding,
                Content =  new ColorGrid(boxSize, count, count)
                // Can use Curly braces after declaring an object to set properties in this 
                {
                    RowSpacing = spacing,
                    ColumnSpacing = spacing,
                    VerticalOptions = LayoutOptions.Center,
                    HorizontalOptions = LayoutOptions.Center
                }
            };
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

    public class ColorGrid: Grid
    {
        public ColorGrid(double boxSize, int rows, int columns)
        {
            // just a loop within a loop to create the grid
            for (var row = 0; row < rows; row++)
            {
                for (var col = 0;  col < columns; col++)
                {
                    var box = new BoxView
                    {
                        Color = Color.FromRgb(row * 256 / rows, col * 256 / columns, 127),
                        WidthRequest = boxSize,
                        HeightRequest = boxSize,
                    };
                    Children.Add(box, row, col);
                }
            }
        }
    }
}
