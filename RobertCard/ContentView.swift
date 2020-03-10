//
//  ContentView.swift
//  RobertCard
//
//  Created by Robert Hatzmann on 02.03.20.
//  Copyright © 2020 Robert Hatzmann. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            
            Color(UIColor(red:0.98, green:0.51, blue:0.19, alpha:1.0))
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                Image("myAvatar")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5))
                Text("Robert Hatzmann")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS & Web Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+49 170 4516306", imageName: "phone.fill")
                InfoView(text: "robster687@gmail.com", imageName: "envelope.circle.fill")
                InfoView(text: "Twitter @nefu", imageName: "link.circle.fill")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
