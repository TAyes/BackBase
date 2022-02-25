# BackBase
Swift Assessment Test 

## Building And Running The Project (Requirements)
* Swift 5.0+
* Xcode 11.5+
* iOS 11.0+

# Getting Started
- If this is your first time encountering swift/ios development, please follow [the instructions](https://developer.apple.com/support/xcode/) to setup Xcode and Swift on your Mac.


## Setup Configs
- Checkout master branch to run latest version
- Open the project by double clicking the `BackBaseTest.xcodeproj` file
- Select the build scheme which can be found right after the stop button on the top left of the IDE
- [Command(cmd)] + R - Run app
```
// App Settings
APP_NAME = BackBaseTest
PRODUCT_BUNDLE_IDENTIFIER = com.rr.cc.BackBaseTest

#targets:
* BackBaseTest
* BackBaseTestTests

```

# Build and or run application by doing:
* Select the build scheme which can be found right after the stop button on the top left of the IDE
* [Command(cmd)] + B - Build app
* [Command(cmd)] + R - Run app

## Architecture
This application uses the Model-View-ViewModel (refered to as MVVM) UI architecture,


## Structure

### Modules
- Include 
	*CityMap/MapViewController, 
	*FindCities/(View/CityTableCell,CitiesViewModel,CitiesTableController),(Model/City).

### Navigation
- Include Navigator, Destination

### Protocol
- Include CitiesLoader

### CommonComponents
- Include Network+Error,  Observable , Trie ..etc

### Extensions
- Include UITableView+Cell,  Array+Sort , UISearchBar+ActivityIndicator ..etc

### SupportingFiles
- Include cities.json

### Scenes
- Group of app scenes.

### Solution details,
- decode data from json file and save it in array
- used Trie data structure to save all cities
  Using Trie will need time proportional to M * log N, where M is maximum string length and N is number of keys in tree. so we can search the key in O(M) time.

 - https://en.wikipedia.org/wiki/Trie

#### screen shots:

![Search (White) scene](https://github.com/TAyes/BackBase/blob/main/Screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2013%20Pro%20Max%20-%202022-02-26%20at%2000.02.13.png)
![Results (White) scene](https://github.com/TAyes/BackBase/blob/main/Screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2013%20Pro%20Max%20-%202022-02-26%20at%2000.02.25.png)
![Map (White) scene](https://github.com/TAyes/BackBase/blob/main/Screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2013%20Pro%20Max%20-%202022-02-26%20at%2000.02.36.png)
![Map (White-Landscape) scene](https://github.com/TAyes/BackBase/blob/main/Screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2013%20Pro%20Max%20-%202022-02-26%20at%2000.02.47.png)

![Search (dark) scene](https://github.com/TAyes/BackBase/blob/main/Screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2013%20Pro%20Max%20-%202022-02-26%20at%2000.03.09.png)
![Results (dark) scene](https://github.com/TAyes/BackBase/blob/main/Screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2013%20Pro%20Max%20-%202022-02-26%20at%2000.03.28.png)
![Map (dark) scene](https://github.com/TAyes/BackBase/blob/main/Screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2013%20Pro%20Max%20-%202022-02-26%20at%2000.03.37.png)
![Map (dark-Landscape) scene](https://github.com/TAyes/BackBase/blob/main/Screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2013%20Pro%20Max%20-%202022-02-26%20at%2000.03.43.png)

