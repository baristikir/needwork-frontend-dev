//
//  AppView.swift
//  needwork
//
//  Created by Baris Tikir on 03.08.20.
//  Copyright © 2020 Baris Tikir. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        
        //Bottom Tabbar
        TabView {
            //2. Insert a subview into your TabView
            HomeView()
                //3. Create a tab bar item for each subview
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            MapView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Map")
                }
        }
    }
}
