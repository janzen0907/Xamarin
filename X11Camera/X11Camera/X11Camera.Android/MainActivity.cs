using System;

using Android.App;
using Android.Content.PM;
using Android.Runtime;
using Android.OS;

namespace X11Camera.Droid
{
    [Activity(Label = "X11Camera", Icon = "@mipmap/icon", Theme = "@style/MainTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize )]
    public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsAppCompatActivity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            global::Xamarin.Forms.Forms.Init(this, savedInstanceState);
            LoadApplication(new App());
            // Setup the ItemSoource to be the path to the directory and all files within 
            // normally should use variables Android.OS.Environment
            string photoPath = "/storage/emulated/0/Android/data/com.companyname.x11camera/files/Pictures/";
            // get access to the instance of App from Anywhere
            (Xamarin.Forms.Application.Current as App).lFiles.ItemsSource = System.IO.Directory.GetFiles(photoPath);
        }
        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }
    }
}