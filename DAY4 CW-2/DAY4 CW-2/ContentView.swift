//
//  ContentView.swift
//  DAY4 CW-2
//
//  Created by Shhooda on 06/08/2022.
//

import SwiftUI

struct ContentView: View {
    
   @State var finalgrade = ""
   @State var grades = ""
    @State var pic = ""
    
    
    var body: some View {
        
        ZStack{
            Color.teal.opacity(0.5)
                .ignoresSafeArea()
            
            VStack
            {
                Text("حاسبة الدرجات")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Spacer()
                
                Image("CALC")
                    .resizable()
                    .frame(width:200, height:200)
                    .padding(.bottom,30)
                    
                
                TextField ("Enter Your Grade Here" , text: $finalgrade )
                    .background(.white)
                    .textFieldStyle(.roundedBorder)
                    .padding(.bottom,10)
                Text("احسب درجتي")
                    .frame(width: 150, height: 50)
                    .foregroundColor(.white)
                    .background(.yellow)
                    .cornerRadius(500)
                    .padding(10)
                    .onTapGesture {
                        if (Double(finalgrade) ?? 0) >= 90  {
                            grades = "امتياز"
                              pic = "A"
                        }
                        else if (Double(finalgrade) ?? 0) >= 80 {
                            
                            grades = "جيد جدا"
                            pic = "B"
                        }
                        
                        else if (Double(finalgrade) ?? 0) >= 70 {
                            
                            grades = "جيّد"
                            pic = "C"
                            
                        }
                        
                        else if (Double(finalgrade) ?? 0) >= 60 {
                            
                            grades = "مقبول"
                            pic = "D"
                            
                        }
                        
                        else {
                              grades="رسوب"
                            pic = "F"
                          }
                        }
            
                     
                
            
                    
                Text("لقد حصلت على درجة")
                .foregroundColor(.white)
                .padding(.bottom,10)
                Image(pic)
                .resizable()
                .scaledToFit()
                Text(grades)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    
                
    }.padding()
                        }
                            
                        }
                    
        
               
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}

