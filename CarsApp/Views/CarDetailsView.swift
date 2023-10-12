//
//  CarDetailsView.swift
//  CarsApp
//
//  Created by Sami Ahmed on 11/10/2023.
//

import SwiftUI

struct CarDetailsView: View {
    //propiries
    var car : Car
    //body
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack{
                //headerView for car
                HeaderView(car: car)
                VStack(alignment: .leading, spacing: 15){
                    //CarTitle
                    Text(car.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(car.gradientColors[0])
                    //CarHeadLine
                    Text(car.headline)
                        .font(.title3)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                        .lineLimit(4)
                    //CarModels
                    ModelView(car: car)
                    
                    
                    //Description
                    Text("learn more about \(car.title)")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(car.gradientColors[0])
                    
                    
                    Text (car.description)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    
                    //Link
                    FooterView()
                        .padding(.bottom, 40)
                        
                
                }//:VStack
                .padding(.horizontal,10)
                
                
                
            }//:VStack End of main screen
        }//ScrollView
        .ignoresSafeArea(.all)
    }
}

struct CarDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CarDetailsView(car: carsData[3])
    }
}


struct FooterView: View {
    var body: some View {
        GroupBox (){
            HStack{
                Link("Source : Wikipedia", destination: URL(string: "http://wikipedia.com")!)
                Spacer()
                Image(systemName: "arrow.up.right.square")
                
            }//:HStack
            
            
        }
    }
}
