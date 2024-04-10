﻿using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace John_Janzen_COSC295_A2
{
    public class Games
    {
        [PrimaryKey, AutoIncrement]
        public int ID { get; set; }
        public string GameName { get; set; }
        public string Description { get ; set; }    
        public double Rating { get; set; }  
    }
}
