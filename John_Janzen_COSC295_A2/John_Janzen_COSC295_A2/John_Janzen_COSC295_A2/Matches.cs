using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace John_Janzen_COSC295_A2
{
    public class Matches
    {
        [PrimaryKey, AutoIncrement]
        public int ID { get; set; }
        public int OppenentID { get; set; }
        public DateTime Date { get; set; }
        public string Comments { get; set; }
        public int GameID { get; set; }
        public bool Win { get; set; }
    }
}
