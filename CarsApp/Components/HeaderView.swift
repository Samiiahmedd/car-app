//
//  HeaderView.swift
//  CarsApp
//
//  Created by Sami Ahmed on 11/10/2023.
//

import SwiftUI

struct HeaderView: View {
    //propirites
    @State var  isAnimating : Bool = false
    var car : Car
    
    //body
    var body: some View {
        ZStack{
            Image(car.image)
                .resizable()
                .scaledToFit()
                .scaleEffect(isAnimating ? 1 : 0.6)
                .animation(.linear(duration: 0.3), value: isAnimating)
            
        }//:ZStack
        .frame(height: 440, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: car.gradientColors) , startPoint: .topLeading, endPoint: .bottomTrailing))
        .onAppear{
            isAnimating = true
        }
    }
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(car: carsData[0])
    }
}
