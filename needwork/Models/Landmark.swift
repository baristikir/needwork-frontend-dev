//
//  Landmark.swift
//  needwork
//
//  Created by Baris Tikir on 10.08.20.
//  Copyright © 2020 Baris Tikir. All rights reserved.
//

import Foundation
import MapKit

struct Landmark {
    let placemark: MKPlacemark
    
    var id: UUID{
        return UUID()
    }
    
    var name: String {
        self.placemark.name ?? ""
    }
    
    var title: String {
        self.placemark.title ?? ""
    }
    
    var coordinate: CLLocationCoordinate2D {
        self.placemark.coordinate
    }
}
