# FootBallFixturesApp
Display Football Data such as today's Match, Competition list using football Data API and Swift

<!-- <p align="center"><a href="#" rel="nofollow"><img src="FixturesIosApp/Utilities/Images/ScreenTwo.png" alt="Ayodeji Ayankola" data-canonical-src="FixturesIosApp/Utilities/Images/ScreenTwo.png" style="max-width: 100%;"></a> <a href="#" rel="nofollow"><img src="FixturesIosApp/Utilities/Images/ScreenOne.png" alt="Ayodeji Ayankola" data-canonical-src="FixturesIosApp/Utilities/Images/ScreenOne.png" style="max-width: 100%;"></a></p> -->
<img src = "FixturesIosApp/Utilities/Images/ScreenOne.png" width ="200" /> <img src = "FixturesIosApp/Utilities/Images/ScreenTwo.png" width ="200" />  <img src = "FixturesIosApp/Utilities/Images/ScreenThree.png" width ="200" /> <img src = "FixturesIosApp/Utilities/Images/ScreenFour.png" width ="200" /> <img src = "FixturesIosApp/Utilities/Images/ScreenFive.png" width ="200" />


## Architecture 
MVVM

## Folder Structure
Manager <br>
Utilities <br>
NetworkManager <br>
Model <br>
ViewModel <br>
Controller <br>
View <br>
UnitTest

## Features

<ul class="contains-task-list">
<li class="task-list-item"><input type="checkbox" id="" disabled="" class="task-list-item-checkbox" checked="">Todays Match Screen + Live Data from endpoint</li>
<li class="task-list-item"><input type="checkbox" id="" disabled="" class="task-list-item-checkbox" checked="">Competitions Screen + Live Data from endpoint</li>
<li class="task-list-item"><input type="checkbox" id="" disabled="" class="task-list-item-checkbox" checked="">Table Screen</li>
<li class="task-list-item"><input type="checkbox" id="" disabled="" class="task-list-item-checkbox" checked="">Fixtures Screen</li>
  <li class="task-list-item"><input type="checkbox" id="" disabled="" class="task-list-item-checkbox" checked="">Team Screen</li>
<li class="task-list-item"><input type="checkbox" id="" disabled="" class="task-list-item-checkbox" checked=""> Competition Unit Test</li>
</ul>


## Requirements
macOS 10.15
Xcode 12
Minimum Deployment Target - iOS 13

## Usage 
Clone the repository:

``` git clone https://github.com/ayodejiayankola/FootBallFixturesApp.git ```

## Installations

### CocoaPods
You can use CocoaPods to install YourLibrary by adding it to your Podfile:

```
platform :ios, '9.0'
use_frameworks!
pod 'RealmSwift', '~>10' 
```

## Getting Started
Clone the Repository<br>
Get the API Key from https://www.football-data.org <br>
Put API Key in  Config.swift  on line 12 inside the NetworkServiceManager Folder<br>
