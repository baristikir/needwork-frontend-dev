//
//  AppView.swift
//  needwork
//
//  Created by Baris Tikir on 03.08.20.
//  Copyright © 2020 Baris Tikir. All rights reserved.
//

import SwiftUI
import BottomBar_SwiftUI

let items: [BottomBarItem] = [
    BottomBarItem(icon: "house.fill", title: "Home", color: .blue),
    BottomBarItem(icon: "gear", title: "Map", color: .blue),
    BottomBarItem(icon: "heart", title: "Favorites", color: .blue),
    BottomBarItem(icon: "person.fill", title: "Profile", color: .blue),
]

struct BasicView: View {
    let item: BottomBarItem
    
    var detailText: String {
        "\(item.title)"
    }
    
    var destination: some View{
        Text(detailText)
            .navigationBarTitle(detailText)
    }
    
    var navigateButton: some View {
        NavigationLink(destination: destination) {
            ZStack {
                Rectangle()
                    .fill(item.color)
                    .cornerRadius(8)
                    .frame(height: 52)
                    .padding(.horizontal)
                
                Text("Navigate")
                    .font(.headline)
                    .foregroundColor(.white)
            }
        }
    }
    
    var body: some View{
        VStack<AnyView>{
            
            if item.title == "Home"{
                return AnyView(HomeView())
            }
            if item.title == "Map"{
                return AnyView(MapView())
            }
            if item.title == "Favorites"{
                return AnyView(FavoritesView())
            }
            if item.title == "Profile"{
                return AnyView(ProfileView())
            }
            else{
                return AnyView(Text("404 - Page Not Found").font(.system(size: 30, weight: .bold, design: .default)))
            }
        }
    }
}
struct AppView: View {
    
    @State private var selectedIndex: Int = 0
    
    var selectedItem: BottomBarItem{
        items[selectedIndex]
    }
    
    var body: some View {
            VStack {
                BasicView(item: selectedItem)
                BottomBar(selectedIndex: $selectedIndex, items: items)
            }
        }
    
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
