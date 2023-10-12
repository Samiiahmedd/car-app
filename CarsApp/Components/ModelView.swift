//
//  ModelView.swift
//  CarsApp
//
//  Created by Sami Ahmed on 11/10/2023.
//

import SwiftUI

struct ModelView: View {
    //propirites
    var car: Car
    
    //body
    var body: some View {
        GroupBox(){
            DisclosureGroup("Car Models") {
                ForEach(0 ..< 7) { item in
                    Divider()
                    HStack{
                        Image(systemName:"car")
                            .foregroundColor(car.gradientColors[0])
                        
                        Text("Model \(item+1) :")
                            .foregroundColor(car.gradientColors[0])
                            .fontWeight(.bold)
                        Spacer()
                        Text(car.models[item])
                 
                    }
                }//:HStack
                .padding(.vertical,2)
               
                
                
            }
            .foregroundColor(car.gradientColors[0])
            
        }//:GroupBox

    }
}

struct ModelView_Previews: PreviewProvider {
    static var previews: some View {
        ModelView(car: carsData[2])
    }
}
