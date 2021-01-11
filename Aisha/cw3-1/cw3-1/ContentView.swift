//
//  ContentView.swift
//  cw3-1
//
//  Created by MacBook` on 05/01/2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            NavigationLink(destination: BMI()) {
                     
                  
            VStack{
            
            Text("مرحبا بك بحاسبة ال BMI")
                .font(.title)
                .bold()
                .foregroundColor(.black)
                
                Spacer()
                
                NavigationLink(
                    destination: BMI(),
                    label:
                    {
                        Text("ابدأ")
                           .foregroundColor(.white)
                           .font(.system(size: 25))
                           .padding(.vertical,10)
                           .padding(.horizontal, 40)
                           .background(Color.blue)
                           .clipShape(Capsule())
                        
                    })
                Spacer()
            }.padding()
            
        }
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
