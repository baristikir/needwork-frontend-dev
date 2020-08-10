#  needwork - Development Journey

## [![result video](http://img.youtube.com/vi/3a6k4FT5BSg/0.jpg)](http://www.youtube.com/watch?v=3a6k4FT5BSg "See Result Here :-)")

Click on Image for linking directly to the video or copy this link : http://www.youtube.com/watch?v=3a6k4FT5BSg

## Day 01 - 14
The development in these 14 days was about getting started and familiar with SwiftUI. I have never used SwiftUI ever before and was just learning by doing. Through my programming language I can tell that I came really quickly into SwiftUI and understood the most things very fast. I was building on top my programming experiences from C#. As a C# enthusiast it felt quite easy to get in SwiftUI. 
- Request sending and Response retreiving between Client(SwiftUI) and Server(ASP.NET Core) is done.
- The authentication is finished. User's can be registered in the SwiftUI application and existing User's can log in in the mobile application. All User transactions are made by the ASP.NET Core Web API, these two tech stacks are connceted and communicating via HTTP. The database schema is SQLite for development porpuses but will lately be switched to PostgreSQL or SQL Server.


### Day 01
Project Setups were made. SwiftUI project using XCode 11.5 and ASP.NET Core Web API project using Visual Studio for Mac.
Getting Started with Swift UI and learning the basics.
 - Variables , Data Annotations
 - Figuring out the structure. "What are these Views?"
 - Creting my first Hello World with SwiftUI

### Day 02 - 06
Started the authentication feature.
- Added the SwiftUI views for Login and Register pages.
- Added the HTTP bridge between to Server inside the Client. `HttpAuth` - Class for HTTP transactions, like `/POST` `Login
- Added Server functionality for authenticate. API Controllers for Login and Registration
 - Implemented JWT - Bearer authenticationscheme , Token based
 - JSON models for responses and requests

### Day 07 - 08
Error handling inside SwiftUI and Code optimazations.
- Error Views in Login and Register pages

### Day 09 - 11
Home View implemented.
 - Styling
 - Custom styled expandable Cards
 - Navigation , Custom Tabbar

Map View implemented.
 - Map integration with MapKit library
 - Card View for Map Locations on top of the map
 
 Profile & Favorites Views implemented.
 
 ### Day 12 - 14 
 Code optimazations, Styling. Adding current location features for the map and search for nearby places were integrated.
  - MKMapView with custom LocationManager and Coordinator were implemented.
  - Closable Advertisement Banner added on Home View
