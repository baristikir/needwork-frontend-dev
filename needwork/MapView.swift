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
    
    @State private var search: String = ""
    @ObservedObject var locationManager = LocationManager()
    
    @State private var landmarks: [Landmark] = [Landmark]()
    
    var body: some View {
 
            VStack{
                
                ZStack (alignment: .top){
                    
                    MapsView(landmarks: landmarks)
                        .edgesIgnoringSafeArea(.all)
                    
                    CategoryView(landmarks: landmarks)
                

                }
                
                VStack{
                    
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
}

struct CardView: View {
    var body: some View {
        ZStack{
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
                        .padding()
                    
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

struct ButtonView: View{
    var body: some View{
        Button(action: {
            print("clicked")
        })
        {
            VStack{
                Text("New")
            }
        }
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

struct CategoryView: View {
    
     var coworking = "Co-Working"
     var learning = "Learning"
     var working = "Working"
    
     @State var showCoworking = false
     @State var showLearning = false
     @State var showWorking = false
    
    @State var search = ""
    @State var landmarks: [Landmark]
    
    private func getNearByLandmarks() {
        
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = self.search
        
        let search = MKLocalSearch(request: request)
        search.start { (response, error) in
            if let response = response {
                let mapItems = response.mapItems
                self.landmarks = mapItems.map {
                    Landmark(placemark: $0.placemark)
                }
            }
        }
    }
    
    func changeSearchText() {
        if self.showCoworking == true {
            let searchForCowork = "Coworking"
            self.search = searchForCowork
        }
        if self.showLearning == true {
            self.search = "Learn Place"
        }
        if self.showWorking == true {
            self.search = "Coworking"
        }
    }
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(alignment: .top){
                
                //Button for finding wokrplaces for coworking
                Button(action: {
                    self.showCoworking.toggle()
                    self.changeSearchText()
                    self.getNearByLandmarks()
                    print("show coworking: \(self.showCoworking)")
                    
                }){
                    Text(coworking)
                        .font(.system(size: 14))
                        .bold()
                        .foregroundColor(Color(.white))
                        .padding(.top)
                        .padding(.leading)
                        .padding(.trailing)
                        .padding(.bottom)
                }
                .background(Color.black.opacity(0.86))
                .clipShape(Capsule())
                .padding(.leading)
                .padding(.top)
                
                //Button for finding wokrplaces for learning
                Button(action: {
                    self.showLearning.toggle()
                    print("show learning: \(self.showLearning)")
                }){
                    Text(learning)
                        .font(.system(size: 14))
                        .bold()
                        .foregroundColor(Color(.white))
                        .padding(.top)
                        .padding(.leading)
                        .padding(.trailing)
                        .padding(.bottom)
                }
                .background(Color.black.opacity(0.86))
                .clipShape(Capsule())
                .padding(.leading, 5)
                .padding(.top)
                
                //Button for finding wokrplaces for working
                Button(action: {
                    self.showWorking.toggle()
                    print("show working: \(self.showWorking)")
                }){
                    Text(working)
                        .font(.system(size: 14))
                        .bold()
                        .foregroundColor(Color(.white))
                        .padding(.top)
                        .padding(.leading)
                        .padding(.trailing)
                        .padding(.bottom)
                }
                .background(Color.black.opacity(0.86))
                .clipShape(Capsule())
                .padding(.leading,5)
                .padding(.top)
                
            }
            
        }
    }
}
