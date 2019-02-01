import UIKit

var str = "Hello, drunk"

//99 bottles of beer on the wall, 99 bottles of beer.
//Take one down and pass it around, 98 bottles of beer on the wall.
//...
//No more bottles of beer on the wall, no more bottles of beer.
//Go to the store and buy some more, 99 bottles of beer on the wall.


func beerSong(forThisManyBottles totalNUmberOfBottles: Int) -> String {
    //inside parameter name: totalNumberOfBottles: used to improve grammer, make things easier to read. "for every number in 1,2, withThisManyBottles." or "for every number in 1,2, totalNumberofBottles."
    
    
    var lyrics: String = ""
    
    for number in (1...totalNUmberOfBottles).reversed() {
        let newLine: String = "\n\(number) bottles of beer on the wall, \(number) bottles of beer. \nTake one down and pass it around, \(number - 1) bottles of beer on the wall.\n"
        
       lyrics += newLine
    //lyrics = current lyrics + new line, loop. \n is code for new line.
        
    }
    
    lyrics += "\nNo more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    
    return lyrics
}


print(beerSong(forThisManyBottles: 25))
//problems: 1 bottle(s), as well as lyrics 0 bottles. 1 bottle, and no more bottles.

