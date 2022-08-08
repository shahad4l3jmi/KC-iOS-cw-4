//
//  ContentView.swift
//  DAY4 -CW3
//
//  Created by Shhooda on 08/08/2022.
//

import SwiftUI



struct ContentView: View {
    
    @State var pic = "DEV2"
    
    var body: some View {
        ZStack{
            Image("WP")
                .resizable()
                .ignoresSafeArea()
                .scaledToFit()
                .frame(width: 450, height: 850)
            
            
            VStack{
                
                Text("ما هو المسار المفضل لديك؟")
                    .font(Font.custom ("AlTarick",size:35))
                    .foregroundColor(.black)
                    .padding(.bottom,70)
                    

                
                Image(pic)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    
                
                Text("GAME DEV.")
                    .frame(width: 300, height: 50)
                    .foregroundColor(.white)
                  //BONUS!
                    .background(.red)
                    .cornerRadius(500)
                    .padding(.top,80)
                    .onTapGesture
                 {
                            pic = "GAME3"
                    }
                //BONUS!
                 .onLongPressGesture {
                     pic = "DEV2"
                 }
                
                 
                 .padding(1)
                
                Text("IOS DEV.")
                    .frame(width: 300, height: 50)
                    .foregroundColor(.white)
                    .background(.cyan)
                    .cornerRadius(500)
                    .onTapGesture
                 {
                            pic = "IOS2"
                    }
                 .onLongPressGesture {
                     pic = "DEV2"
                 }
                
                 .padding(1)
                
                Text("WEB DEV.")
                    .frame(width: 300, height: 50)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(500)
                    .onTapGesture
                 {
                            pic = "WEB2"
                 }
                 .onLongPressGesture {
                     pic = "DEV2"
                 }
                
                Text("ANDROID DEV.")
                    .frame(width: 300, height: 50)
                    .foregroundColor(.white)
                    .background(.green)
                    .cornerRadius(500)
                    .onTapGesture
                     {
                            pic = "ANDROID4"
                    }
                     .onLongPressGesture {
                         pic = "DEV2"
                     }
                
            }.padding(10)
            
            
        }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
