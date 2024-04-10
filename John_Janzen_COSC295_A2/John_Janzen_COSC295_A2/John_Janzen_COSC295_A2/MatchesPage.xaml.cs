using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace John_Janzen_COSC295_A2
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MatchesPage : ContentPage
    {

        ObservableCollection<Matches> matchesList;
        ObservableCollection<Games> gameList;
        ObservableCollection<Oppenents> oppenentsList;
        ObservableCollection<MatchDetails> matchesDetailList;

        Oppenents selectedOpponent;

        public MatchesPage(Oppenents opponent)
        {
            InitializeComponent();
            Title = "Matches";
            selectedOpponent = opponent;

            LoadMatches();

            ListView viewMatches = new ListView
            {
                ItemsSource = matchesDetailList,
                ItemTemplate = new DataTemplate(typeof(MatchCell)),
                RowHeight = 50
            };

            viewMatches.ItemTapped += (s, e) =>
            {
                viewMatches.SelectedItem = null;
                // TODO: Handle match selection
            };

            TableView tableView = new TableView();
            TableRoot root = new TableRoot();
            TableSection section = new TableSection();

            Picker pickerGame = new Picker();
            foreach (var game in App.GameDB.GetGames())
            {
                pickerGame.Items.Add(game.GameName);
            }

            DatePicker datePicker = new DatePicker { Date = DateTime.Today };

            Switch winLossSwitch = new Switch();

            Button btnAddMatch = new Button { Text = "Add Match" };
            btnAddMatch.Clicked += (s, e) =>
            {
                // Add match to the selected opponent
                Matches match = new Matches
                {
                    ID = Convert.ToInt32(selectedOpponent.ID),
                    GameID = Convert.ToInt32(pickerGame.SelectedIndex),
                    Date = Convert.ToDateTime(datePicker.Date),
                    Win = Convert.ToBoolean(winLossSwitch.IsToggled),
                };
                //Save it to the db
                App.GameDB.SaveMatches(match);

                // Reload matches after adding
                LoadMatches();
            };

            section.Add(new ViewCell { View = new StackLayout { Orientation = StackOrientation.Horizontal, Children = { new Label { Text = "Game:" }, pickerGame } } });
            section.Add(new ViewCell { View = new StackLayout { Orientation = StackOrientation.Horizontal, Children = { new Label { Text = "Date:" }, datePicker } } });
            section.Add(new ViewCell { View = new StackLayout { Orientation = StackOrientation.Horizontal, Children = { new Label { Text = "Win/Loss:" }, winLossSwitch } } });
            section.Add(new ViewCell { View = new StackLayout { Orientation = StackOrientation.Horizontal, Children = { btnAddMatch } } });

            root.Add(section);
            tableView.Root = root;

            StackLayout layout = new StackLayout { Orientation = StackOrientation.Vertical };
            layout.Children.Add(viewMatches);
            layout.Children.Add(tableView);
            Content = layout;
        }

        private void LoadMatches()
        {
            List<Matches> matches = App.GameDB.GetMatchesForOpponent(selectedOpponent.ID);
            matchesDetailList = new ObservableCollection<MatchDetails>();

            foreach (var match in matches)
            {
                matchesDetailList.Add(new MatchDetails
                {
                    OppFirstName = selectedOpponent.FirstName,
                    OppLastName = selectedOpponent.LastName,
                    GameDate = match.Date,
                    GameName = App.GameDB.GetGame(match.GameID)?.GameName,
                    Comments = match.Comments,
                    Win = match.Win
                });
            }
        }
    }


    public class MatchCell : ViewCell
    {
        public MatchCell()
        {
            Label lblFName = new Label();
            Label lblLName = new Label();
            Label lblGame = new Label();
            Label lblDate = new Label();
            Label lblWin = new Label();
            Label lblComments = new Label();

            // Having issues figuring out how to display these properly. 
            // Currently it is only displaying the boolean for a win or loss
            lblFName.SetBinding(Label.TextProperty, "MatchDetails.OppFirstName");
            lblLName.SetBinding(Label.TextProperty, "Oppenents.LastName");
            lblGame.SetBinding(Label.TextProperty, "Games.GameName");
            lblDate.SetBinding(Label.TextProperty, "Games.MatchDate");
            lblComments.SetBinding(Label.TextProperty, "Win");
            lblWin.SetBinding(Label.TextProperty, "Comments");
            

            StackLayout nameLayout = new StackLayout 
            {
                Orientation = StackOrientation.Horizontal,
                HorizontalOptions = LayoutOptions.FillAndExpand,
                Children = { lblFName, lblLName}
            };

            StackLayout dataAndCommentLayout = new StackLayout
            {
                Orientation = StackOrientation.Horizontal,
                HorizontalOptions = LayoutOptions.FillAndExpand,
                Children = { lblDate, lblComments }
            };
            
            StackLayout gameAndWinLayout = new StackLayout
            {
                Orientation = StackOrientation.Horizontal,
                HorizontalOptions = LayoutOptions.FillAndExpand,
                Children = { lblGame, lblWin}
            };

            
      

            View = new StackLayout
            {
                Orientation = StackOrientation.Vertical,
                Spacing = 10,
                Children = { nameLayout, dataAndCommentLayout, gameAndWinLayout },
                HorizontalOptions = LayoutOptions.CenterAndExpand,
                VerticalOptions = LayoutOptions.Center,
            };

            MenuItem deleteItem = new MenuItem { Text = "Delete", IsDestructive = true };
            deleteItem.Clicked += (sender, e) =>
            {
                if (BindingContext is Match match)
                {
                    ListView listView = (ListView)this.Parent;
                    ((ObservableCollection<Matches>)listView.ItemsSource).Remove(BindingContext as Matches);
                }
            };
            ContextActions.Add(deleteItem);
        }
    }
}