// Wrote out the player data to be used. So much fun thank you -_- lol

var joeSmith = ["fName" : "Joe", "lName": "Smith","Height": "42","Soccer Experience": "YES","Guardian Names": "Jim and Jan Smith"]

var jillTanner: [String: String] = ["fName": "Jill", "lName": "Tanner","Height": "36","Soccer Experience": "YES","Guardian Names": "Clara Tanner"]

var billBon: [String: String] = ["fName": "Bill", "lName": "Bon","Height": "43","Soccer Experience": "YES","Guardian Names": "Sara and Jenny Bon"]

var evaGordon: [String: String] = ["fName": "Eva", "lName": "Gordon","Height": "45","Soccer Experience": "NO","Guardian Names": "Wendy and Mike Gordon"]

var mattGill: [String: String] = ["fName": "Matt", "lName": "Gill","Height": "40","Soccer Experience": "NO","Guardian Names": "Charles and Sylvia Gill"]

var kimmyStein: [String: String] = ["fName": "Kimmy", "lName": "Stein","Height": "41","Soccer Experience": "NO","Guardian Names": "Bill and Hillary Stein"]

var sammyAdams: [String: String] = ["fName": "Sammy", "lName": "Adams","Height": "45","Soccer Experience": "NO","Guardian Names": "Jeff Adams"]

var karlSaygan: [String: String] = ["fName": "Karl", "lName": "Saygan","Height": "42","Soccer Experience": "YES","Guardian Names": "Heather Bledsoe"]

var suzaneGreenberg: [String: String] = ["fName": "Suzane", "lName": "Greenberg","Height": "44","Soccer Experience": "YES","Guardian Names": "Henrietta Dumas"]

var salDali: [String: String] = ["fName": "Sal", "lName": "Dali","Height": "41","Soccer Experience": "NO","Guardian Names": "Gala Dali"]

var joeKavalier: [String: String] = ["fName": "Joe", "lName": "Kavalier","Height": "39","Soccer Experience": "NO","Guardian Names": "Sam and Elaine Kavalier"]

var benFinkelstein: [String: String] = ["fName": "Ben", "lName": "Finklestein","Height": "44","Soccer Experience": "NO","Guardian Names": "Aaron and Jill Finkelstein"]

var diegoSoto: [String: String] = ["fName": "Diego", "lName": "Soto","Height": "41","Soccer Experience": "YES","Guardian Names": "Robin and Sarika Soto"]

var chloeAlaska: [String: String] = ["fName": "Chloe", "lName": "Alaska","Height": "47","Soccer Experience": "NO","Guardian Names": "David and Jamie Alaska"]

var arnoldWillis: [String: String] = ["fName": "Arnold", "lName": "Willis","Height": "43","Soccer Experience": "NO","Guardian Names": "Claire Willis"]

var phillipHelm: [String: String] = ["fName": "Phillip", "lName": "Helm","Height": "44","Soccer Experience": "YES","Guardian Names": "Thomas Helm and Eva Jones"]

var lesClay: [String: String] = ["fName": "Les", "lName": "Clay","Height": "42","Soccer Experience": "YES","Guardian Names": "Wynonna Brown"]

var herschelKrustofski: [String: String] = ["fName": "Herschel", "lName": "Krustofski","Height": "45","Soccer Experience": "YES","Guardian Names": "Hyman and Rachel Krustofski"]




// Empty players array
var players = [[String:String]]()

// manually put players into players array

players  = [joeSmith,jillTanner,billBon,evaGordon,mattGill,kimmyStein,sammyAdams,karlSaygan,suzaneGreenberg,salDali,joeKavalier,benFinkelstein,diegoSoto,chloeAlaska,arnoldWillis,phillipHelm,lesClay,herschelKrustofski]

// Team information
var teamDragons = [String]()
var teamSharks = [String]()
var teamRaptors = [String]()

// Array of Team Height value
var arrayOfTeamDragonsHeight = [Int]()
var arrayOfTeamSharksHeight = [Int]()
var arrayOfTeamRaptorsPlayersHeight = [Int]()

//Total height number for team
var totalHeightRaptor: Int = 0
var totalHeightDragon: Int = 0
var totalHeightSharks: Int = 0
// Average height number for team
var avgHeightRaptor: Double = 0
var avgHeightDragon: Double = 0
var avgHeightSharks: Double = 0

// Experienced Player Count
var teamDragonsExpPlayerCount: Int = 0
var teamSharksExpPlayerCount: Int = 0
var teamRaptorsExpPlayerCount: Int = 0

// nonExpPlayerCount
var teamDragonsNoPlayerCount: Int = 0
var teamSharksNoPlayerCount: Int = 0
var teamRaptorsNoPlayerCount: Int = 0

//function for height value
func avgTeamHeight (arrayOfTeamsHeight: [Int], totalTeamsHeight: Int) -> Double{
    
    var totalTeamsHeight = totalTeamsHeight
    
    for playerHeight in 0..<arrayOfTeamsHeight.count{
       
        totalTeamsHeight += arrayOfTeamsHeight[playerHeight]
    }
    let teamAvgHeight: Double = Double(totalTeamsHeight) / Double(arrayOfTeamsHeight.count)
    //print(teamAvgHeight)
    return(Double(teamAvgHeight))
    
}

//Empty team variable
var teams = [[String]]()

// array holding teams array
teams = [teamDragons,teamSharks,teamRaptors]
// For in loop to get to next value(each player in the array of players)
    for var player in players{
        
// Another for in loop to access the tupil pairs in dictionary
        for (key, value) in player{
            
// I found switch statement to be easiest to control attributes
            switch (key,value) {
                
// I gave experienced players their own case statement with logic
            case ("Soccer Experience","YES"):
                
                        
                    if teamDragonsExpPlayerCount < teamSharksExpPlayerCount  {
                    teams[0].append(player["fName"]!)
                    player["soccerTeams"] = "Dragons"
                    player["teamPracticeTime"] = "March 17, at 1pm"
                    arrayOfTeamDragonsHeight.append(Int(player["Height"]!)!)
                    avgHeightDragon = avgTeamHeight(arrayOfTeamsHeight: arrayOfTeamDragonsHeight, totalTeamsHeight: totalHeightDragon)
                        teamDragonsExpPlayerCount += 1
                    }
                    else if teamSharksExpPlayerCount < teamRaptorsExpPlayerCount {
                    teams[1].append(player["fName"]!)
                    player["soccerTeams"] = "Sharks"
                    player["teamPracticeTime"] = "March 17, at 3pm"
                    arrayOfTeamSharksHeight.append(Int(player["Height"]!)!)
                    avgHeightSharks = avgTeamHeight(arrayOfTeamsHeight: arrayOfTeamSharksHeight, totalTeamsHeight: totalHeightSharks)
                    teamSharksExpPlayerCount += 1
                    } else {
                    teams[2].append(player["fName"]!)
                    player["soccerTeams"] = "Raptors"
                    player["teamPracticeTime"] = "March 18, at 1pm"
                    arrayOfTeamRaptorsPlayersHeight.append(Int(player["Height"]!)!)
                    avgHeightRaptor = avgTeamHeight(arrayOfTeamsHeight: arrayOfTeamRaptorsPlayersHeight, totalTeamsHeight: totalHeightRaptor)
                    teamRaptorsExpPlayerCount += 1
                };
                //logic for letters put inside case statement
                var letters = [String]()
                
                //Logic and information  to fill the letters array
                letters.append("Dear \(player["Guardian Names"]!),\n   \(player["fName"]!) has been placed on team \(player["soccerTeams"]!). We are excited this year as our team rosters have now been standardized to have fair games(Fancy talk for mixing teams based on player experience level in so that no team should overall be more experienced than another. We are looking forward to seeing \(player["fName"]!) on \(player["teamPracticeTime"]!).\n\n")
                
                // iterating thruough the letters
                for letter in letters{
                    print(letter)
                }
                
                
// Same for noexperience players as for experienced players(Just changed some word from exp to noexp)
// Add logic for average player height inside switch statement in the case statement
            case ("Soccer Experience","NO"): ();
            
            
       /*   while team player average is lower or higher than average {}
             // pull values before inserting players, sort the(9) values to get the average. then place playes in team according to sort order.
            */
         
            
             
 
            
                if teamDragonsNoPlayerCount < teamSharksNoPlayerCount {
                    teams[0].append(player["fName"]!)
                    player["teamPracticeTime"] = "March 17, 1pm"
                    player["soccerTeams"] = "Dragons"
                    arrayOfTeamDragonsHeight.append(Int(player["Height"]!)!)
                    avgHeightDragon = avgTeamHeight(arrayOfTeamsHeight: arrayOfTeamDragonsHeight, totalTeamsHeight: totalHeightDragon)
                    teamDragonsNoPlayerCount += 1
                
                } else if teamSharksNoPlayerCount < teamRaptorsNoPlayerCount {
                    teams[1].append(player["fName"]!)
                    player["teamPracticeTime"] = "March 17, 3pm"
                    player["soccerTeams"] = "Sharks"
                    arrayOfTeamSharksHeight.append(Int(player["Height"]!)!)
                    avgHeightSharks = avgTeamHeight(arrayOfTeamsHeight: arrayOfTeamSharksHeight, totalTeamsHeight: totalHeightSharks)
                    teamSharksNoPlayerCount += 1
                } else {
                    teams[2].append(player["fName"]!)
                    player["teamPracticeTime"] = "March 18, 1pm"
                    player["soccerTeams"] = "Raptors"
                    arrayOfTeamRaptorsPlayersHeight.append(Int(player["Height"]!)!)
                    avgHeightRaptor = avgTeamHeight(arrayOfTeamsHeight: arrayOfTeamRaptorsPlayersHeight, totalTeamsHeight: totalHeightRaptor)
                    teamRaptorsNoPlayerCount += 1
            };
            
            var letters = [String]()
            
            letters.append("Dear \(player["Guardian Names"]!),\n   \(player["fName"]!) has been placed on team \(player["soccerTeams"]!). We are excited this year as our team rosters have now been standardized to have fair games(Fancy talk for mixing teams based on player experience level in so that no team should overall be more experienced than another. We are looking forward to seeing \(player["fName"]!) on \(player["teamPracticeTime"]!).\n\n")
            
            for letter in letters{
                print(letter)
                }
//No value for default allows me to run code empty to ensure I adleast can get syntax correct!
                
            default:
                ()
            
        }
    }
        
}

print(avgHeightDragon)
print(avgHeightSharks)
print(avgHeightRaptor)