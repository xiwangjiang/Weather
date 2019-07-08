//
//  NetworkManager.swift
//  Weather
//
//  Created by Lunabee on 21/06/2019.
//  Copyright © 2019 Snopia. All rights reserved.
//

import UIKit

class NetworkManager: NSObject {
    
    struct Key {
        
        static let darkSky: String = "42cf1247b7825659debfcdf6e885ae08" // Enter your darkSky API key here
        static let googleMaps: String = "AIzaSyC00wf-_BfjX_2AEVrUFrQsSAMsFBDSVuE" // Enter your google maps API key here
        
    }
    
    struct APIURL {
        
        static func weatherRequest(longitude: Double, latitude: Double) -> String {
            return "https://api.darksky.net/forecast/\(NetworkManager.Key.darkSky)/\(latitude),\(longitude)?units=ca&lang=fr".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        }
        
        static func cityCompletion(for search: String) -> String {
            return "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=\(search)&types=(cities)&key=\(NetworkManager.Key.googleMaps)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        }
        
        static func cityData(for placeID: String) ->  String {
            return "https://maps.googleapis.com/maps/api/place/details/json?placeid=\(placeID)&key=\(NetworkManager.Key.googleMaps)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        }
                
    }
        
}
