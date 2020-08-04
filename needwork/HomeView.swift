//
//  HomeView.swift
//  needwork
//
//  Created by Baris Tikir on 29.07.20.
//  Copyright © 2020 Baris Tikir. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var manager: HttpAuth
    
    func signOut(){
        self.manager.authenticated = false
    }
    var body: some View {
        VStack{
            
            Text("Home")
            
            Button(action: signOut)
            {
                Text("Sign Out")
            }
        }
    }
}
