//
//  ContentView.swift
//  needwork
//
//  Created by Baris Tikir on 25.07.20.
//  Copyright © 2020 Baris Tikir. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var manager: HttpAuth
    
    var body: some View {

        if self.manager.authenticated {
                return AnyView(SignInView())
            } else {
                return AnyView(AppView())
            }

    }
}
