//
//  LandmarkAnnotation.swift
//  needwork
//
//  Created by Baris Tikir on 10.08.20.
//  Copyright © 2020 Baris Tikir. All rights reserved.
//

import MapKit
import UIKit

final class LandmarkAnnotation: NSObject, MKAnnotation {
    let title: String?
    let coordinate: CLLocationCoordinate2D
    
    init(landmark: Landmark){
        self.title = landmark.title
        self.coordinate = landmark.coordinate
    }
}
