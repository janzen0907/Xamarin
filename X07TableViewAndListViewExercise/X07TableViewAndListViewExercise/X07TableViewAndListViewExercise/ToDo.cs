using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;

namespace X07TableViewAndListViewExercise
{
    public class ToDo : INotifyPropertyChanged
    {
        private string description = "";
        private DateTime date;
        private Boolean completed = false;

        public string Description
        {
            get
            {
                return description;
            }
            set { description = value;}
        }

        public DateTime Date
        {
            get
            {
                return date;
            }
            set { date = value;}
        }

        public Boolean Completed
        {
            get
            {
                return completed;
            }
            set
            {
                completed = value;
            }   
        }

        public event PropertyChangedEventHandler PropertyChanged;
    }
}
