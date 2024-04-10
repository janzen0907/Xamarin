using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace John_Janzen_COSC295_A2
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class GamesPage : ContentPage
    {
        ObservableCollection<GamesWithMatchCount> games;

        public GamesPage()
        {
            InitializeComponent();
            Title = "Games";

            games = new ObservableCollection<GamesWithMatchCount>();

           
            PopulateGamesWithMatchCounts();

            ListView gamesListView = new ListView
            {
                ItemsSource = games,
                ItemTemplate = new DataTemplate(typeof(GameCell)),
                RowHeight = 50
            };

            Content = gamesListView;
        }

        // Method that is meant to display the count of games played
        // Currently not working
        private void PopulateGamesWithMatchCounts()
        {
            foreach (var game in App.GameDB.GetGames())
            {
                int matchCount = App.GameDB.GetMatchesForGame(game.ID).Count;
                games.Add(new GamesWithMatchCount
                {
                    Game = game,
                    MatchCount = matchCount
                });
            }
        }
    }

    
    public class GamesWithMatchCount
    {
        public Games Game { get; set; }
        public int MatchCount { get; set; }
    }

    public class GameCell : ViewCell
    {
        public GameCell()
        {
            Label lblGameName = new Label();
            Label lblDescription = new Label();
            Label lblRating = new Label();
            Label lblMatchCount = new Label();

            lblGameName.SetBinding(Label.TextProperty, "Game.GameName");
            lblDescription.SetBinding(Label.TextProperty, "Game.Description");
            lblRating.SetBinding(Label.TextProperty, "Game.Rating");
            lblMatchCount.SetBinding(Label.TextProperty, "MatchCount", stringFormat: "Matches: {0}");

            View = new StackLayout
            {
                Orientation = StackOrientation.Vertical,
                Children = { lblGameName, lblDescription, lblRating, lblMatchCount }
            };
        }
    }
}
