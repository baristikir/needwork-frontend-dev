//
//  Coordinator.swift
//  needwork
//
//  Created by Baris Tikir on 08.08.20.
//  Copyright © 2020 Baris Tikir. All rights reserved.
//

import Foundation
import MapKit

final class Coordinator: NSObject, MKMapViewDelegate{
    
    var control: MapsView
    
    init(_ control: MapsView){
        self.control = control
    }
    
}
