//
//  File.swift
//  
//
//  Created by Stuart A. Malone on 3/23/23.
//

import Foundation
import LinguaFranca

public struct GetCurrentWeatherAction: ServerAction {
    public typealias ResponseType = String
    
    public let path: String = "getCurrentWeather"
    
    public init() {}
}
