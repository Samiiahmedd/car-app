//
//  Car.swift
//  CarsApp
//
//  Created by Sami Ahmed on 11/10/2023.
//
import SwiftUI
import Foundation
struct Car: Identifiable {
    let id = UUID()
    let title :String
    let headline : String
    let image : String
    let gradientColors :[Color]
    let description : String
    let models : [String]
}
