using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace X11Camera
{
    public partial class App : Application
    {
        public ListView lFiles = new ListView
        {
            HeightRequest = 400,
            ItemTemplate = new DataTemplate(typeof(PhotoCell))
        };

        public App()
        {
            InitializeComponent();

            StackLayout layout = new StackLayout();
            Label lblPath = new Label {Text = "Path" };
            Image photoImage = new Image();
            Button btnCam = new Button { Text = "Take Photo" };
            btnCam.Clicked += async (s, e) =>
            {
                string filename = "img";
                var photo = await Plugin.Media.CrossMedia.Current.TakePhotoAsync(
                    new Plugin.Media.Abstractions.StoreCameraMediaOptions() { Name = filename });
                if (photo != null) // a null would happen if the photo taking failed
                {
                    lblPath.Text = photo.Path;
                    // Read through the stream and display the image
                    photoImage.Source = ImageSource.FromStream(() => { return photo.GetStream(); });

                }
            };
            lFiles.Refreshing += (s, e) =>
            {
                string photoPath = "/storage/emulated/0/Android/data/com.companyname.x11camera/files/Pictures/";
                // get access to the instance of App from Anywhere
                lFiles.ItemsSource = System.IO.Directory.GetFiles(photoPath);
                lFiles.EndRefresh();
            };

            layout.Children.Add(lFiles);
            layout.Children.Add(photoImage);
            layout.Children.Add(btnCam);
            MainPage = new ContentPage { Content = layout };
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
            lFiles.BeginRefresh(); // cause the list view to refresh and calls teh Refreshing  Event
        }

        public class PhotoCell : ViewCell
        {
            
            public PhotoCell()
            {
                Image img = new Image();
                Label lblPath = new Label();
                img.SetBinding(Image.SourceProperty, "."); // the. will bind to the "value" of a string (our data is an array of stirngs)
                lblPath.SetBinding(Label.TextProperty, ".");
                StackLayout stackLayout = new StackLayout
                {
                    Orientation = StackOrientation.Horizontal,
                    Children = { lblPath, img }

                };
                View = stackLayout;
            }
        }
    }
}
