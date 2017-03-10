// Wrote out the player data to be used

var joeSmith = ["fName" : "Joe", "lName": "Smith","Height": "42","Soccer Experience": "YES","Guardian Names": "Jim and Jan Smith"]

var jillTanner: [String: String] = ["fName": "Jill", "lName": "Tanner","Height": "36","Soccer Experience": "YES","Guardian Names": "Clara Tanner"]

var billBon: [String: String] = ["fName": "Bill", "lName": "Bon","Height": "43","Soccer Experience": "YES","Guardian Names": "Sara and Jenny Bon"]

var evaGordon: [String: String] = ["fName": "Eva", "lName": "Gordon","Height": "45","Soccer Experience": "NO","Guardian Names": "Wendy and Mike Gordon"]

var mattGill: [String: String] = ["fName": "Matt", "lName": "Gill","Height": "40","Soccer Experience": "NO","Guardian Names": "JCharles and Sylvia Gill"]

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


// TEST AREA BELOW///


players[3]["fName"]
players[3]["Soccer Experience"]



//TEST AREA ABOVE///

// Team information
var teamDragons: [String] = []
var teamSharks: [String] = []
var teamRaptors: [String] = []

//teamDragons.append(players[3]["fName"]!)
// Experienced Player Count
var teamDragonsExpPlayerCount: Int = 0
var teamSharksExpPlayerCount: Int = 0
var teamRaptorsExpPlayerCount: Int = 0

// nonExpPlayerCount
var teamDragonsNoPlayerCount: Int = 0
var teamSharksNoPlayerCount: Int = 0
var teamRaptorsNoPlayerCount: Int = 0

//Empty team variable with team counter below
var teams = [[String]]()

teams = [teamDragons,teamSharks,teamRaptors]
//Count number of times teams have value of [Exp person]


    for player in players{
    // Use .isEmpty to help append to teams
    // If team has same(equal to) fName or Xp # greater than the xp # of other teams then do nothing
    // then append to team
        for (key, value) in player{
            
            switch (key,value) {
            case ("Soccer Experience","YES"): print(player["fName"]!)
                
            case ("Soccer Experience","NO"): ()
            default:
                ()
            
            }
            
        }
            
            
            
       // if players[player]["Soccer Experience"] == "YES"{
           // teams[teamDragons].append(players[player]["fName"]!)
           // teamDragons.append(players[3]["fName"]!)
        }

        
       
 
        



teams
teamDragons
teamRaptors
teamSharks





























