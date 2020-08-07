//
//  HomeView.swift
//  needwork
//
//  Created by Baris Tikir on 29.07.20.
//  Copyright © 2020 Baris Tikir. All rights reserved.
//

import SwiftUI


// COLORS
let backgroundColor = Color(#colorLiteral(red: 0.9478042722, green: 0.9413100481, blue: 0.937730968, alpha: 1))
let textColor = Color(#colorLiteral(red: 0.2569463253, green: 0.2420758605, blue: 0.2151646316, alpha: 1))
let secondaryColor = Color(#colorLiteral(red: 0.5676505566, green: 0.5602197647, blue: 0.5466300845, alpha: 1))
let accentTextColor = Color(#colorLiteral(red: 0.6852199435, green: 0.6780956984, blue: 0.6678422093, alpha: 1))
let firstCardColor = Color(#colorLiteral(red: 0.6142973304, green: 0.6206635833, blue: 0.583666563, alpha: 1))
let secondaryAccentTextColor = Color(#colorLiteral(red: 0.7871719599, green: 0.7800607085, blue: 0.7697893977, alpha: 1))
let secondCardColor = Color(#colorLiteral(red: 0.5775497556, green: 0.5494823456, blue: 0.4757016897, alpha: 1))
let thirdCardColor = Color(#colorLiteral(red: 0.4129932523, green: 0.3736724257, blue: 0.3598947823, alpha: 1))
let fourthCardColor = Color(#colorLiteral(red: 0.2431854308, green: 0.2543239295, blue: 0.3014985323, alpha: 1))
let dividerColor = Color(#colorLiteral(red: 0.2628910542, green: 0.2736267447, blue: 0.3174280226, alpha: 1))
let opaqueColor = Color(#colorLiteral(red: 0.3335806727, green: 0.343891114, blue: 0.3843034506, alpha: 1))


struct Item: Identifiable{
    var id = UUID()
    var name: String
    var type: String
    var description: String
    var subtitle: String
    var image: String
}

struct HomeView: View {
    
    @State var expandedItem = Item(name:"Oberholz",type: "Coworking Cafe", description: "Cafe", subtitle: "", image: "")
    @State var expandedScreen_startPoint = CGRect(x: 0, y: 0, width: 100, height: 100)
    @State var expandedScreen_returnPoint = CGRect(x: 0, y: 0, width: 100, height: 100)
    @State var expandedScreen_shown = false
    @State var expandedScreen_willHide = false
    
    @EnvironmentObject var manager: HttpAuth
    
    //Variables
    var items:[Item] = [
        Item(name: "St Oberholz", type: "Coworking Cafe", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Etiam tempor orci eu lobortis elementum nibh. Cras sed felis eget velit aliquet sagittis. Nibh sit amet commodo nulla facilisi nullam vehicula ipsum. Pretium fusce id velit ut tortor pretium viverra suspendisse potenti. Mi quis hendrerit dolor magna eget est lorem. Gravida dictum fusce ut placerat orci nulla pellentesque. Mauris sit amet massa vitae tortor condimentum lacinia quis vel. Aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque. Eget dolor morbi non arcu risus. Placerat duis ultricies lacus sed turpis tincidunt. Aliquet sagittis id consectetur purus. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Morbi tristique senectus et netus. Elementum facilisis leo vel fringilla est ullamcorper eget. Pellentesque elit eget gravida cum sociis. Ultricies tristique nulla aliquet enim tortor at. Risus viverra adipiscing at in. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Etiam tempor orci eu lobortis elementum nibh. Cras sed felis eget velit aliquet sagittis. Nibh sit amet commodo nulla facilisi nullam vehicula ipsum. Pretium fusce id velit ut tortor pretium viverra suspendisse potenti. Mi quis hendrerit dolor magna eget est lorem. Gravida dictum fusce ut placerat orci nulla pellentesque. Mauris sit amet massa vitae tortor condimentum lacinia quis vel. Aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque. Eget dolor morbi non arcu risus. Placerat duis ultricies lacus sed turpis tincidunt. Aliquet sagittis id consectetur purus. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Morbi tristique senectus et netus. Elementum facilisis leo vel fringilla est ullamcorper eget. Pellentesque elit eget gravida cum sociis. Ultricies tristique nulla aliquet enim tortor at. Risus viverra adipiscing at in.", subtitle: "Cafe", image: "Cafe1"),
        Item(name: "St Oberholz 2", type: "Coworking Cafe", description: "Workplace for freelancers / students and more", subtitle: "Cafe", image: "Cafe2"),
        Item(name: "Freelance Working Station", type: "Freelance Workplace", description: "Workplace for freelancers / students and more", subtitle: "Workplace", image: "Cafe3"),
        Item(name: "Microsoft Cafe", type: "Coworking Cafe", description: "Workplace for freelancers / students and more", subtitle: "Cafe", image: "Cafe5"),
    ]
    let itemHeight: CGFloat = 300
    let itemWidth: CGFloat = 400
    let SVWidth = UIScreen.main.bounds.width - 80
    
    func signOut(){
        self.manager.authenticated = false
    }
    
    var body: some View {
        ZStack{
            //Coloring
            Color.white.edgesIgnoringSafeArea(.all)
            //For wrapping up horizontal ScrollView in vertical ScrollView
            GeometryReader{ g in
                
                //Vertical ScrollView for whole View
                ScrollView{
                    
                    //--------- Heading Section
                    HStack{
                        
                        //Vertical Stack for Heading Text Section
                        VStack(alignment: .leading){
                            
                            // TODO: Autogenerated via time management
                            Text("Guten Tag")
                                .font(.system(size: 18, weight: .bold, design: .default))
                                .foregroundColor(.gray)
                            
                            //TODO: User's personal name from database
                            //Font color is white because of the overall foregroundcolor of white
                            Text("Baris")
                                .font(.system(size: 40, weight: .bold, design: .default))
                                .foregroundColor(.black)
                        }
                                                
                        Spacer()
                        
                         Image(systemName: "person")
                            .resizable()
                            .frame(width: 30, height: 30)
                            
                        //Layout Sizing
                        }.padding(.leading).padding(.top).padding(.trailing)
                  
                    //--------- Heading Section

                    horizontalScroll()
                    
                    //--------- Cards Section
                    
                    //Geometry Reader for all cards in horizontal support
                    
                    //Horizontal Scrolling of all Cards
                    ScrollView(.horizontal, showsIndicators: false){
                        
                        //Horizontal alignment of all cards
                        HStack(spacing: self.SVWidth){
                            
                            //Turning Array of Items in individual Item as Card
                            ForEach(self.items, id: \.id){ thisItem in
                                
                                GeometryReader{geo -> AnyView in
                                    return AnyView(
                                        
                                        ZStack{
                                            //Image of the Item
                                            Image(thisItem.image)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width:self.SVWidth, height: self.itemHeight)
                                                .clipped()
                                            
                                            //Button the whole size of the card and is clickable
                                            Button(action:{
                                                
                                                //That Item which was clicked is set to the expanding Item
                                                self.expandedItem = thisItem
                                                //With Geometry Reader we can get the X value of the current Item which was clicked, for expandable feature
                                                let x = geo.frame(in: .global).minX
                                                //With Geometry Reader we can get the Y value of the current Item which was clicked, for expandable feature
                                                let y = geo.frame(in: .global).minY
                                                //Rect of these coordinates
                                                let thisRect = CGRect(x: x, y: y ,
                                                                      width: self.SVWidth, height: self.itemHeight)
                                                
                                                //Start & Endpoint of the expanding rectangle
                                                self.expandedScreen_returnPoint = thisRect
                                                self.expandedScreen_startPoint = thisRect
                                                
                                                //Animation porpuses
                                                Timer.scheduledTimer(withTimeInterval: 0.3, repeats: false) { (timer) in
                                                    self.expandedScreen_shown = true
                                                    self.expandedScreen_startPoint = CGRect(x: 0, y: 0,
                                                                                            width: UIScreen.main.bounds.size.width,
                                                                                            height: UIScreen.main.bounds.size.height)
                                                }

                                            })
                                            {
                                                VStack{
                                                    HStack{
                                                        
                                                        VStack(alignment: .leading){
                                                            Text("\(thisItem.subtitle)")
                                                                .font(.system(size: 18, weight: .bold, design: .default))
                                                                .foregroundColor(.white).opacity(0.6)
                                                            Text("\(thisItem.name)").kerning(-0.5)
                                                                .font(.system(size: 36, weight: .bold, design: .default))
                                                        }.padding()
                                                        Spacer()
                                                    }
                                                    
                                                    Spacer()
                                                    
                                                    HStack{
                                                        
                                                        VStack(alignment: .leading){
                                                            Text("\(thisItem.description)")
                                                                .lineLimit(2)
                                                                .font(.system(size: 18, weight: .bold, design: .default))
                                                                .foregroundColor(.init(red: 0.9, green: 0.9, blue: 0.9)).opacity(0.8)
                                                        }.padding()
                                                        Spacer()
                                                    }
                                                }.frame(width: self.SVWidth)
                                                .background(
                                                    ZStack{
                                                        LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.18), Color.black.opacity(0.0)]), startPoint: .top, endPoint: .bottom)
                                                })
                                            }
                                        }
                                        .cornerRadius(15.0).foregroundColor(.white)
                                        .shadow(color: .init(red: 0.1, green: 0.1, blue: 0.1) , radius: 7, x: 0, y: 4))
                                    
                                }.background(Color.clear.opacity(0.4)).frame(height: self.itemHeight)
                                    .padding(.leading, 20)
                                    .padding(.trailing, 20)
                                    .padding(.bottom, 20)
                            }.coordinateSpace(name: "forEach")
                        }
                    }
                }
                
                //---------
            }
            
            //Expanded View
            GeometryReader{geoReader -> AnyView in
                let thisItem = self.expandedItem

                return AnyView(
                    
                    ZStack{
                        ScrollView{
                            VStack(spacing: 0){
                                //For Recreating the old unexpanded Card and View
                                ZStack{
                                    
                                    Image(thisItem.image)
                                        .resizable()
                                        .scaledToFit()
                                        .offset(y: self.expandedScreen_shown ? 0:0)
                                        .frame(width: self.expandedScreen_shown ? UIScreen.main.bounds.width : self.SVWidth,
                                               height: self.itemHeight)
                                        .clipped()
                                        .background(Color.white)
                                        .edgesIgnoringSafeArea(.top)
                                    
                                    VStack{
                                        HStack{
                                                    VStack(alignment: .leading){
                                                        Text("\(thisItem.subtitle)")
                                                            .font(.system(size: 18, weight: .bold, design: .default))
                                                            .foregroundColor(.init(red: 0.8, green: 0.8, blue: 0.8))
                                                            .opacity(1.0)
                                                        
                                                        Text("\(thisItem.name)")
                                                            .font(.system(size: 36, weight: .bold, design: .default))
                                                            .foregroundColor(.white)
                                                    }.padding()
                                                    Spacer()
                                                }.offset(y: self.expandedScreen_shown ? 44 : 0)
                                                Spacer()
                                                HStack{
                                                    VStack(alignment: .leading){
                                                        Text("\(thisItem.description)")
                                                            .lineLimit(2)
                                                            .font(.system(size: 18, weight: .bold, design: .default))
                                                            .foregroundColor(.init(red: 0.9, green: 0.9, blue: 0.9))
                                                            .opacity(0.8)
                                                    }.padding()
                                                    Spacer()
                                                }
                                            }.frame(width: self.expandedScreen_startPoint.width)
                                        }.frame(height: self.itemHeight).zIndex(1)
                                Text("\(thisItem.description)").padding().background(Color.white).frame(
                                maxHeight: self.expandedScreen_shown ? .infinity : 0)
                                } 
                            }.frame(width: self.expandedScreen_startPoint.width, height: self.expandedScreen_startPoint.height)
                            .background(Color.clear)
                            .cornerRadius(self.expandedScreen_shown ? 0 : 15 )
                            .animation(.easeInOut(duration: 0.3))
                            .offset(x: self.expandedScreen_startPoint.minX, y: self.expandedScreen_startPoint.minY)
                      
                                    Button(action: {
                                        self.expandedScreen_willHide = true
                                        self.expandedScreen_startPoint = self.expandedScreen_returnPoint
                                        
                                        self.expandedScreen_shown = false
                                        Timer.scheduledTimer(withTimeInterval: 0.6, repeats: false){
                                            (timer) in
                                            self.expandedScreen_willHide = false
                                        }
                                    }){
                                        Image(systemName: "xmark.circle.fill")
                                            .foregroundColor(.init(white: 0.9))
                                            .font(.system(size:25)).padding()
                                            .opacity(self.expandedScreen_shown ? 1 : 0.0)
                                            .animation(Animation.easeInOut(duration: 0.3))
                                    }.offset(x: (UIScreen.main.bounds.width/2) - 30 , y: (-1 * UIScreen.main.bounds.height/2) + 60)
                    }
                )
            }.edgesIgnoringSafeArea(.top)
                .opacity(self.expandedScreen_shown ? 1 : 0.0)
                .animation(Animation.easeInOut(duration: 0.05)
                    .delay(self.expandedScreen_willHide ? 0.5 : 0))
            }
    }
}

// -- Horizontal Scroll of Categorys -- //
fileprivate func horizontalScroll() -> some View{
    
    var selected = true
    
    return // top horizontal scroll
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                Color.clear.frame(width:13)
                
                //
                VStack{
                    //First Item of Categories
                    Text("Co-Working")
                        .kerning(-0.5)
                        .foregroundColor(Color.white)
                        .font(.custom("HelveticaNeue-Medium", size: 18))
                        .padding([.vertical], 5)
                        .padding([.horizontal], 10)
                        .background(selected ? secondaryAccentTextColor : Color.clear)
                        .cornerRadius(15)
                }.onTapGesture {
                    print("tapped")
                    selected.toggle()
                }
                
                //Distance as background color to next category item
                Color.clear.frame(width: 90)
                
                //Second Item of Categories
                Text("Working")
                    .kerning(-0.5)
                    .foregroundColor(secondaryAccentTextColor)
                    .font(.custom("HelveticaNeue-Medium",
                                  size: 18))
                
                //Distance as background color to next category item
                Color.clear.frame(width: 20)
                
                //Second Item of Categories
                Text("Learning")
                    .kerning(-0.5)
                    .foregroundColor(secondaryAccentTextColor)
                    .font(.custom("HelveticaNeue-Medium",
                                  size: 18))
            }
        }.padding([.bottom], 20).padding([.top],15)
}





// --- Preview Section --- //

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

