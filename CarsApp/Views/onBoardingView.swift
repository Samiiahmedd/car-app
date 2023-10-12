//
//  ContentView.swift
//  CarsApp
//
//  Created by Sami Ahmed on 11/10/2023.
//

import SwiftUI

struct onBoardingView: View {
    var body: some View {
        TabView{
            ForEach(carsData) { item in
                cardView(car: item)
                    .cornerRadius(15)
                    .padding(.horizontal, 10)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding()
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        onBoardingView()
    }
}
