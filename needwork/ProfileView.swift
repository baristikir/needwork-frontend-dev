//
//  ProfileView.swift
//  needwork
//
//  Created by Baris Tikir on 08.08.20.
//  Copyright © 2020 Baris Tikir. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    
    @State var name = ""
    
    var body: some View {
        ZStack{
            //Coloring
            Color.white.edgesIgnoringSafeArea(.all)
            
            // -- Start of Scroll View -- //
            ScrollView{
                
                // -- Horizontal Stack Header Section-- //
                HeaderView()
                
            }
            // -- End of Scroll View -- //

        }
    }
}

// -- SubView for Titeling the specific Page -- //
struct TitleView: View{
    let label: String
    
    var body: some View{
        Text(label)
            .font(.title)
            .fontWeight(.heavy)
    }
}

// -- Header Section -- //
struct HeaderView: View {
    var body: some View {
        HStack{
            // -- Vertical Stack for Heading --//
            VStack(alignment: .leading){
                // -- SubView for Titeling the Profile Page --//
                TitleView(label: "Profile")
            }
            
            Spacer()
            
            // -- Profile Icon -- //
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 25, height: 25)
            
        // -- Padding Horizontal Stack -- //
        }.padding(.top).padding(.trailing).padding(.leading)
    }
}


// -- Preview Section -- //
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
