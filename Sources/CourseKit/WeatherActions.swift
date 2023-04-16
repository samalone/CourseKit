//
//  File.swift
//  
//
//  Created by Stuart A. Malone on 3/23/23.
//

import Foundation
import LinguaFranca
import GeoKit

public struct GetCurrentWeatherAction: GetAction {
    public var requestBody = None()
    public var query = None()
    public static var path: Path = ["weather"]
    
    public typealias ResponseType = String
    
    public init() {}
}

public struct GetNearbyWeatherStations: GetAction {
    public var requestBody = None()
    
    public static var path: Path = ["weather-station"]
    
    public typealias ResponseType = String
    
    public var query = Coordinate()
    
    public init() {}
}

public struct GetWeatherStation: GetAction {
    public var requestBody = None()
    public var query = None()
    
    public static var path: Path = ["weather-station", .param(\.id)]
    
    public typealias ResponseType = String
    
    public var id: UUID
    
    public init() {
        id = UUID()
    }
}
