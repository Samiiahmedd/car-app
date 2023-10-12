//
//  settingView.swift
//  CarsApp
//
//  Created by Sami Ahmed on 12/10/2023.
//

import SwiftUI

struct settingView: View {
    //propirties
 @AppStorage("isOnboarding") var isOnboarding : Bool = true
    @Environment(\.presentationMode) var presentaionMode
//body
    var body: some View {
        NavigationView{
            VStack{
                //GroupBox
                GroupBox(){
                    HStack{
                        Text("Cars".uppercased())
                            .font(.title3)
                            .fontWeight(.bold)
                        Spacer()
                        Image(systemName: "info.circle")
                            .font(.title)
                        
                    }//:HStack first cell
                    Divider()
                    HStack{
                        Image("icon")
                        
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80,height: 80,alignment: .center)
                        Text("cars app include very important details about lucutry cars,  it has details about the history of diffrent models")
                            .fontWeight(.light)
                    }//:HStack Second cell
                    
                    
                    
                    
                    
                } //:GroupBox
                
                
                
                
                
                //:CheckBox
                Toggle(isOn: $isOnboarding) {
                    if isOnboarding{
                        Text("Restarted".uppercased())
                            .font(.title)
                            .foregroundColor(.green)
                        
                    }else{
                        
                        Text("Restart".uppercased())
                            .font(.title)
                            .foregroundColor(.gray)
                    }
                }
                .padding()
                .background(.ultraThickMaterial)
                .cornerRadius(8)
                Spacer()
                
            }//:VStack
            .navigationTitle("Settings")
            .navigationBarItems(trailing:  Button(action: {
                presentaionMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark.circle")
                    .font(.title2)
            }))
        }//:NavigationView
    }
}

struct settingView_Previews: PreviewProvider {
    static var previews: some View {
        settingView()
    }
}
