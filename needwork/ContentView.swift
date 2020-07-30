//
//  ContentView.swift
//  needwork
//
//  Created by Baris Tikir on 25.07.20.
//  Copyright © 2020 Baris Tikir. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var currentUser: CurrentUserAuth
    
    var body: some View {

            if !currentUser.isLoggedin {
                return AnyView(AuthView())
            } else {
                return AnyView(HomeView())
            }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
