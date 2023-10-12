//
//  CarListView.swift
//  CarsApp
//
//  Created by Sami Ahmed on 11/10/2023.
//

import SwiftUI

struct CarListView: View {
    //propirites
    @State var isSettingViewPresented : Bool = false
    //body
    var body: some View {
        NavigationView {
            List{
                ForEach(carsData) { item in
                    NavigationLink(destination: CarDetailsView (car: item)){
                        CellView(car: item)
                            .padding(.vertical,4)
                    }//:NavigationLink
                }
                
                
            }//:List
            .navigationTitle("Cars")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems( trailing: Button(action: {
                isSettingViewPresented = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            }))
            .sheet(isPresented: $isSettingViewPresented) {
                settingView()
            }
        }//:NavigationView
    }
}

struct CarListView_Previews: PreviewProvider {
    static var previews: some View {
        CarListView()
    }
}
