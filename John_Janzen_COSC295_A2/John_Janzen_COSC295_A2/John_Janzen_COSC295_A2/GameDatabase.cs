using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Xml.Linq;

namespace John_Janzen_COSC295_A2
{
    public class GameDatabase
    {
        readonly SQLiteConnection database;

        public GameDatabase(string dbPath)
        {
            database = new SQLiteConnection(dbPath);
            // Create the needed tables
            database.CreateTable<Games>();
            database.CreateTable<Oppenents>();
            database.CreateTable<Matches>();

            // Insert data into the tables
            if (database.Table<Games>().Count() == 0)
            {
                // Insert starting data for games
                Games chess = new Games { GameName = "Chess", Description = "Simple Grid Game", Rating = 9.5 };
                Games checkers = new Games { GameName = "Checkers", Description = "Simpler Grid Game", Rating = 5 };
                Games dominoes = new Games { GameName = "Dominoes", Description = "Blocks Game", Rating = 6.75 };
                SaveGames(chess);
                SaveGames(checkers);
                SaveGames(dominoes);
            }
           // //if (database.Table<Oppenents>().Count() == 0)
            {
                // Insert a row
                //Oppenents oppenent = new Oppenents
                //{
                 //   FirstName = "Bob",
                  //  LastName = "RealGuy",
                  //  Email = "bob@gmail.com",
                  //  Address = "123 Fake Street",
                  //  Phone = "306-444-7777"
               // };
               // SaveOppenent(oppenent);

               // Oppenents oppenent2 = new Oppenents
               // {
                    //FirstName = "Tom",
                   // LastName = "FakeGuy",
                    //Email = "Tom@gmail.com",
                   // Address = "432 Silent Hill",
                   // Phone = "306-444-7777"
                //};
                //SaveOppenent(oppenent2);
            //}
            //if (database.Table<Matches>().Count() == 0)
            //{
              //  Matches match = new Matches { OppenentID = 1, Date = DateTime.Now, Comments = "GG Fella", GameID = 1, Win = true }; 
             //   Matches match2 = new Matches { OppenentID = 1, Date = DateTime.Now, Comments = "Game 2", GameID = 2, Win = true };
             //   Matches match3 = new Matches { OppenentID = 2, Date = DateTime.Now, Comments = "Toms Game", GameID = 3, Win = false };


              //  SaveMatches(match);
             //   SaveMatches(match2);
             //   SaveMatches(match3);
            }
        }
        // function to reset the app, drop the tables and remake them to clear the data
        public void ResetApp()
        {
            // Drop all three tables
            database.DropTable<Oppenents>();
            database.DropTable<Matches>();
            database.DropTable<Games>();

            // Recreate tables
            database.CreateTable<Oppenents>();
            database.CreateTable<Matches>();
            database.CreateTable<Games>();

            InitilizeGamesTable();
        }

        // Function to initilize the games table after the app has been reset
        public void InitilizeGamesTable()
        {
            Games chess = new Games { GameName = "Chess", Description = "Simple Grid Game", Rating = 9.5 };
            Games checkers = new Games { GameName = "Checkers", Description = "Simpler Grid Game", Rating = 5 };
            Games dominoes = new Games { GameName = "Dominoes", Description = "Blocks Game", Rating = 6.75 };
            SaveGames(chess);
            SaveGames(checkers);
            SaveGames(dominoes);
        }


        #region SaveGames
        public int SaveGames(Games game)
        {
            // check if there is any existing items
            if (game.ID != 0 )
            {
                return database.Update(game);
            }
            else
            {
                return database.Insert(game);
            }
        }

        public int DeleteGame(Games game)
        {
            return database.Delete(game);
        }

        public List<Games> GetGames()
        {
            return database.Table<Games>().ToList<Games>();  
        }

        public Games GetGame(int id)
        {
            return database.Table<Games>().Where(i => i.ID == id).FirstOrDefault();  
        }

        public List<Matches> GetMatchesForGame(int gameId)
        {
            return database.Table<Matches>().Where(m => m.GameID == gameId).ToList();
        }
        #endregion

        #region SaveOppenent
        public int SaveOppenent(Oppenents opp)
        {
            // check if there is any existing items
            if (opp.ID != 0)
            {
                return database.Update(opp);
            }
            else
            {
                return database.Insert(opp);
            }
        }

        public int DeleteOpp(Oppenents opp)
        {
            return database.Delete(opp);
        }

        public List<Oppenents> GetOpps()
        {
            return database.Table<Oppenents>().ToList<Oppenents>();
        }

        public Oppenents GetOpp(int id)
        {
            return database.Table<Oppenents>().Where(i => i.ID == id).FirstOrDefault();
        }
        #endregion

        #region SaveMatches
        public int SaveMatches(Matches match)
        {
            // check if there is any existing items
            if (match.ID != 0)
            {
                return database.Update(match);
            }
            else
            {
                return database.Insert(match);
            }
        }

        public int DeleteMatch(Matches match)
        {
            return database.Delete(match);
        }

        public List<Matches> GetMatches()
        {
            return database.Table<Matches>().ToList<Matches>();
        }

        public Matches GetMatch(int id)
        {
            return database.Table<Matches>().Where(i => i.ID == id).FirstOrDefault();
        }

        public List<Matches> GetMatchesForOpponent(int opponentID)
        {
            return database.Table<Matches>().Where(m => m.OppenentID == opponentID).ToList();
        }
        #endregion
    }
}
