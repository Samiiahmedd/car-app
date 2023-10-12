//
//  CarsAppApp.swift
//  CarsApp
//
//  Created by Sami Ahmed on 11/10/2023.
//

import SwiftUI

@main
struct CarsAppApp: App {
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                onBoardingView()
            }else{
                
                CarListView()
            }
        }
    }
}
