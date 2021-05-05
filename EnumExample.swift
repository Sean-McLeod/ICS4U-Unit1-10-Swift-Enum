/* This program uses enum to display
   the positions of a planet.

   Sean McLeod
   2021/05/04
*/

enum PlanetData : String, CaseIterable {
    case Mercury = "1st"
    case Venus = "2nd"
    case Earth = "3rd"
    case Mars = "4th"
    case Jupiter = "5th"
    case Saturn = "6th"
    case Uranus = "7th"
    case Neptune = "8th"
    case Pluto = "9th"

    // return collection of planet names
    static func checkName(_ name: String) -> PlanetData? {
        return self.allCases.first{ "\($0)" == name }
    }
}

print("This program figures out the"
      ,"position of a planet.")

// Input
print("Enter the planet's name: ")
let userPlanet = readLine()

// check if user input is in the enum
if let planetName = PlanetData.checkName(userPlanet!) {
    let position = planetName.rawValue
    // Output
    print("\n\(planetName) is the \(position) "
          + "planet in the solar system.");

} else {
    print("\nThis is not the proper name for a planet")
}
