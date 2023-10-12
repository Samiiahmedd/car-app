//
//  CellView.swift
//  CarsApp
//
//  Created by Sami Ahmed on 11/10/2023.
//

import SwiftUI

struct CellView: View {
    //propirites
    var  car:Car
    
    
    
    //body
    var body: some View {
        HStack{
            Image(car.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .background(LinearGradient(colors: car.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing))
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 2,x: 2,y: 2)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 0.5){
                Text(car.title)
                    .font(.title2)
                    .fontWeight(.heavy)
                Text(car.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .lineLimit(3)

            }//:VStack
            Spacer() //push cell to left
        
        }//:HStack
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(car: carsData[1])
            .previewLayout(.sizeThatFits)
            
    }
}
