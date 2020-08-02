//
//  ErrorView.swift
//  needwork
//
//  Created by Baris Tikir on 02.08.20.
//  Copyright © 2020 Baris Tikir. All rights reserved.
//

import SwiftUI

struct ErrorView: View {
    
    @State var color = Color.black.opacity(0.7)
    @Binding var alert: Bool
    @Binding var error: String
    
    var body: some View {
        GeometryReader{_ in
            VStack{
                HStack{
                    Text(self.error == "RESET" ? "Message" : "Error")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(self.color)
                
                    Spacer()
                }
                .padding(.horizontal, 25)
                
                Text(self.error == "RESET" ? "Password reset link has been sent successfully" : self.error)
                    .foregroundColor(self.color)
                    .padding(.top)
                
                Button(action: {
                    
                    self.alert.toggle()
                    
                }){
                    Text(self.error == "RESET" ? "Ok" : "Cancel")
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 120)
                }.background(LinearGradient(gradient: Gradient(colors: [
                .blue , .blue ]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(10)
                    .padding(.top, 25)
            }
            .frame(width: UIScreen.main.bounds.width - 70)
            .background(Color.white)
            .cornerRadius(15)
        }
        .background(Color.black.opacity(0.35).edgesIgnoringSafeArea(.all))
    }
}

