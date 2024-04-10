using System;
using System.Collections.Generic;
using System.Text;

namespace John_Janzen_COSC295_A2
{
    // This was meant to be a helper class to display the information on the matches
    // page, currently not working as inteneded
    public class MatchDetails
    {
        public string OppFirstName { get; set; }
        public string OppLastName { get; set; }
        public DateTime GameDate { get; set; }
        public string GameName { get; set; }
        public string Comments { get; set; }
        public bool Win { get; set; }
    }
}
