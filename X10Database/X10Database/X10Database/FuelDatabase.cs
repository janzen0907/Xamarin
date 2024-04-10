using SQLite;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq; // common library that adds a ton of functionality to genric collections
using System.Text;

namespace X10Database
{
    public class FuelDatabase
    {
        readonly SQLiteConnection database;
        public FuelDatabase(string dbPath)
        {
            database = new SQLiteConnection(dbPath); // attempt to either create the db file, or open an existing file
            database.CreateTable<FuelPurchase>(); // will make the table for the Fuel Purchase if it doesn't already exist
            //create a dummy row just so we have some data, normally not done in a real app
            if(database.Table<FuelPurchase>().Count() == 0) // Table<> returns a collection we can do further operations on, like Count or Where
            {
                // configure and save a new purchase
                FuelPurchase purchase = new FuelPurchase { cost = 15, litres = 10, date = new DateTime(2024, 3, 15)};
                SaveItem(purchase); // This method will use database.insert
            }
        }

        /// <summary>
        /// This method contains logic to check if the item exists than we should update it
        /// If it has not been created yet than it will insert the item
        /// </summary>
        /// <param name="item"></param>
        /// <returns></returns>
        public int SaveItem(FuelPurchase item)
        {
            // check if this is an existing item
            if (item.ID != 0)
            {
                return database.Update(item); // perform an update on the associated record
            }
            else
            {
                // The item did not exist, so we will insert it into the database.
                return database.Insert(item); 
            }
        }

        /// <summary>
        /// Delete the specified item from the database
        /// </summary>
        /// <param name="item"></param>
        /// <returns></returns>
        public int DeleteItem(FuelPurchase item)
        {
            return database.Delete(item);
        }

        /// <summary>
        /// This method will convert the table into a collection(list)
        /// </summary>
        /// <returns></returns>
        public List<FuelPurchase> GetItems()
        {
            // Get everything for the DB and turn it into a list
            // LINQ is used for this. Tons of SQL like operations can be performed with LINQ
            return database.Table<FuelPurchase>().ToList<FuelPurchase>();
        }

        /// <summary>
        /// Get a single item from the database by using a where clause and search for the ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public FuelPurchase GetItem(int id) 
        {
            // Anonymous function to get the id and see which one matches
            // return the purchase that matches the passed in ID using LINQ Language Integratd Query
            return database.Table<FuelPurchase>().Where(i => i.ID == id).FirstOrDefault();
        }


        /// <summary>
        /// Probably won't use this, just a method to demonstrate that we can use SQL if wanted
        /// The above ways are much better than this
        /// </summary>
        /// <returns></returns>
        public List<FuelPurchase> GetItemsOverTenLitres()
        {
            // This query will return a list
            return database.Query<FuelPurchase>("SELECT * FROM [FuelPurchase] WHERE [litres] > 10");
        }
    }
}
