using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace X07TableViewAndListViewExercise
{
    public class ToDoPage : ContentPage
    {
        public ToDoPage()
        {

            ObservableCollection<ToDo> list = new ObservableCollection<ToDo>
            {
                 new ToDo { Description = "Go to Walmart", Date = DateTime.Now, Completed = false },
                 new ToDo { Description = "Sleep", Date = DateTime.Now, Completed = false },
                 new ToDo { Description = "Wake Up", Date = DateTime.Now, Completed = true },
            };

            ListView listview = new ListView
            {
                ItemsSource = list,
                ItemTemplate = new DataTemplate(typeof(ToDoCell)),
                RowHeight = ToDoCell.RowHeight
            };

            Title = "To Do List";

            StackLayout layout = new StackLayout();
            layout.Children.Add(listview);

            TableView table = new TableView { Intent = TableIntent.Form, VerticalOptions = LayoutOptions.End };
            EntryCell eDesc = new EntryCell { Label = "Description"};
            SwitchCell switchcell = new SwitchCell { Text = "Completed"};
            ViewCell datePickerCell = new ViewCell();

            DatePicker datePicker = new DatePicker
            {
                Format = "dddd, MMMM d, yyyy", // Set the desired date format
                Date = DateTime.Today // Set the default date
            };
           
            datePickerCell.View = datePicker;
            TableSection section = new TableSection { eDesc, switchcell, datePickerCell };
            table.Root = new TableRoot { section };
            layout.Children.Add(table);

            Button btnNew = new Button { Text = "Save To Do Item" };
            btnNew.Clicked += (sender, e) =>
            {
                ToDo t = new ToDo { Description = eDesc.Text, Completed = switchcell.On, Date = datePicker.Date};
                list.Add(t);
                eDesc.Text = "";
                switchcell.On = false;
            };

           
            layout.Children.Add(btnNew);



            Content = layout;
            
        }
    }

    public class ToDoCell : ViewCell
    {
        public const int RowHeight = 100; 
        public ToDoCell()
        {
            Label lblDesc = new Label { FontAttributes = FontAttributes.Bold };
            lblDesc.SetBinding(Label.TextProperty, "Description");
            Label lblDate = new Label { FontAttributes = FontAttributes.Italic };
            lblDate.SetBinding(Label.TextProperty, new Binding("Date") { StringFormat ="{dddd, MMMM d, yyyy}" });
            Label lblCompleted = new Label
            {
                Text = "Completed?"
            };
            Switch taskCompleted = new Switch { VerticalOptions = LayoutOptions.Center };

            View = new StackLayout
            {
                Spacing = 2,
                Padding = 5,
                Children = { lblDesc, lblDate, lblCompleted, taskCompleted },
            };
        }
    }
}