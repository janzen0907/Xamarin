using System;
using System.Collections.Generic;
using System.Net;
using System.Text;
using static Xamarin.Essentials.Permissions;
using Xamarin.Essentials;
using System.ComponentModel;
using System.Security.Cryptography;
using System.Data;
using SQLite;

namespace JohnJanzenCOSC295Assignment2
{
    

    public class GameInfoDatabase
    {

        readonly SQLiteConnection database;
        // 1.	Opponents – ID, First Name, Last Name, Address, Phone, Email
        // a.ID – Auto incrementing int
        // b.	First Name, Last Name, Address, Phone, Email - String


        //2.	Matches – ID, Opponent ID, Date, Comments, Game ID, Win
        //a.ID – Auto incrementing int
        //b.	Opponent ID – int that refers to Opponents table ID (acts like a foreign key, basically)
        //c.Date – DateTime
        //d.Comments – string
        //e.	Game ID – int that refers to Games table ID (acts like a foreign key, basically)
        //f.Win – bool (true for a win, false for a loss)

        //3.	Games – ID, Game Name, Description, Rating
        //a.ID – Auto incrementing int
        //b.Game Name, Description – string
        //c.	Rating – double – ranges from 0 to 10 (decimals allowed)
    }
}
