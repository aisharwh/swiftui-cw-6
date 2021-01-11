//
//  BMI.swift
//  cw3-1
//
//  Created by MacBook` on 08/01/2021.
//

import SwiftUI

struct BMI: View {

    @State var height: String = ""
    @State var weight: String = ""
    @State var bmi: String = "0.0"
    @State var bmiStatus: String = "-"

    var body: some View {
        
        NavigationView{
                       
        VStack{
            
            Text("BMI calculator")
                .font(.largeTitle)
                .bold()
            TextField("الطول بالمتر", text: $height).multilineTextAlignment(.trailing).textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("الوزن بالكيلو جرام", text: $weight)
                .multilineTextAlignment(.trailing).textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("احسب"){
              
                let h = Double(height) ?? 1
                let w = Double(weight) ?? 1
                bmi = String(w / (h * h))
                let b = Double(bmi) ?? 1
                
                if b <= 20 {
                    bmiStatus = "ضعيف"
                } else if b <= 25 {
                    bmiStatus = "جيد"
                } else
                {
                    bmiStatus = "سمين"
                }
               
            }
            .foregroundColor(.white)
            .font(.system(size: 25))
           .padding(.vertical,10)
           .padding(.horizontal, 40)
           .background(Color.blue)
           .clipShape(Capsule())
            
            Text("BMI")
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Text(bmi)
                .font(.system(size: 30))
                .fontWeight(.heavy)
                
                .padding()
            Text("Status")
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            Text(bmiStatus)
                .font(.system(size: 30))
                .fontWeight(.heavy)
                .padding()
            
            Spacer()

        }.padding()
         
        }
        
    }
        
}

struct BMI_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BMI()
        }
    }
}

