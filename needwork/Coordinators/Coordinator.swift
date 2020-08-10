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
    
    // Setting the User Location, how far it should be zoomed out / in
    func mapView(_ mapView: MKMapView, didAdd views: [MKAnnotationView]) {
        if let annotationView = views.first {
            if let annotation = annotationView.annotation {
                if annotation is MKUserLocation {
                    let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 1000, longitudinalMeters:  1000)
                    mapView.setRegion(region, animated: true)
                }
            }
        }
    }
}
