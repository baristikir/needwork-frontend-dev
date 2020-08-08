//
//  FavoritesView.swift
//  needwork
//
//  Created by Baris Tikir on 08.08.20.
//  Copyright © 2020 Baris Tikir. All rights reserved.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        ZStack{
            //Coloring
            Color.white.edgesIgnoringSafeArea(.all)
            
            // -- Start of Scroll View -- //
            ScrollView{
                
                // -- Horizontal Stack Header Section-- //
                FavoritesHeaderView()
                
            }
            // -- End of Scroll View -- //

        }
    }
}

struct FavoritesHeaderView: View{
    @State var name = ""
    
    var body: some View{
       HStack{
            // -- Vertical Stack for Heading --//
            VStack(alignment: .leading){
                // -- SubView for Titeling the Profile Page --//
                TitleView(label: "Favorites")
            }
            
            Spacer()
            
            // -- Profile Icon -- //
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 25, height: 25)
            
        // -- Padding Horizontal Stack -- //
        }.padding(.top).padding(.trailing).padding(.leading)
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
