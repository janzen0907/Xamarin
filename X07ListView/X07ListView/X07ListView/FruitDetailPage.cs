using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace X07ListView
{
    public class FruitDetailPage : ContentPage
    {
        public FruitDetailPage(Fruit fruit)
        {
            Title = fruit.Name;
            
            // TableView to show a form for editing a Fruit Instance
            
            StackLayout stackLayout = new StackLayout { HorizontalOptions = LayoutOptions.Center };
            TableView table = new TableView {  Intent = TableIntent.Form};
            EntryCell eName = new EntryCell { Label = "Name", Text = fruit.Name };
            EntryCell eDescription = new EntryCell { Label = "Description", Text = fruit.Desc };
            TableSection section = new TableSection(fruit.Name) {eName, eDescription};
            table.Root = new TableRoot { section };
            stackLayout.Children.Add(table);

            Button btnSave = new Button {Text = "Save Changes" };
            btnSave.Clicked += (s, e) =>
            {
                fruit.Name = eName.Text;
                fruit.Desc = eDescription.Text;
                Navigation.PopAsync();
            };

            Button btnCancel = new Button {  Text = "Cancel" };
            btnCancel.Clicked += (s, e) =>
            {
                Navigation.PopAsync();
            };

            stackLayout.Children.Add(btnSave);
            stackLayout.Children.Add(btnCancel);

            Content = stackLayout;  


        }
    }
}