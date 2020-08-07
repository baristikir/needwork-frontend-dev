//
//  MapView.swift
//  needwork
//
//  Created by Baris Tikir on 03.08.20.
//  Copyright © 2020 Baris Tikir. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        VStack{
//            HStack{
//                SearchView()
//            }.padding(.horizontal)
            
            MapsView()
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0 ..< 5) { card in
                        CardView()
                    }
                    .padding(.leading)
                    .padding(.trailing, 8)
                }
            }
        }
        
    }
}

//---- Start - Google Maps View Integration ----//
struct MapsView: UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<MapsView>) -> MKMapView {
        let mapView = MKMapView()
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapsView>) {
    }
}
//---- End - Google Maps View Integration ---- //


struct CardView: View {
    var body: some View {
        VStack {
            Image("Cafe2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .offset(y: 24)
                .frame(width: 270, height: 100)
                .clipped()
                .overlay(ImageButtonView(), alignment: .topTrailing)
            
            VStack {
                HStack {
                    Text("Coworking Cafe")
                    Spacer()
                }
                
                HStack {
                    Text("Place name")
                        .font(.caption)
                    Spacer()
                }
                
                HStack {
                    Text("easy")
                        .foregroundColor(.white)
                        .font(.caption)
                        .padding(.vertical, 2)
                        .padding(.horizontal, 12)
                        .background(Color.purple)
                        .cornerRadius(8)
                    
                    ForEach(0 ..< 5) { _ in
                        Image(systemName: "star.fill")
                            .font(.caption)
                            .foregroundColor(.yellow)
                    }
                    
                    Text("(227)")
                        .font(.caption)
                    
                    Spacer()
                }
                
                HStack {
                    Text("Length: 27.87 mi • Est. 4h 12m")
                        .font(.caption)
                    Spacer()
                    
                    Button(action: {
                        //
                    }) {
                        Image(systemName: "location.fill")
                            .font(.subheadline)
                            .foregroundColor(.purple)
                    }
                }
            }
            .padding([.horizontal, .bottom])
        }
        .frame(width: 270)
        .background(Color(.secondarySystemFill))
        .cornerRadius(8)
    }
}

struct ImageButtonView: View {
    @State private var isTapped = false
    
    var body: some View {
        Button(action: {
            self.isTapped.toggle()
        }) {
            Image(systemName: isTapped ? "heart.fill" : "heart")
                .foregroundColor(isTapped ? .green : .white)
                .padding()
        }
    }
}

struct SearchView: View{
    @State private var search = ""
    
    var body: some View{
        ZStack
            {
                Rectangle()
                    .foregroundColor(Color(.systemGray5))
                    .cornerRadius(12)
                    .frame(height: 60)
                
                HStack{
                    TextField("Search", text: $search)
                    
                    Image(systemName: "magnifyingglass")
                        .font(Font.system(size:22).weight(.bold))
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(.systemIndigo))
                        .cornerRadius(12)
                }
        }.padding(.horizontal)
    }
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

struct HelloView: View {
    var body: some View {
        Text("Hello World")
    }
}
