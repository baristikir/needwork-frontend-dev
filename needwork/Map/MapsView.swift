//
//  MapsView.swift
//  needwork
//
//  Created by Baris Tikir on 10.08.20.
//  Copyright © 2020 Baris Tikir. All rights reserved.
//

import Foundation
import SwiftUI
import MapKit

//---- Start - Google Maps View Integration ----//
struct MapsView: UIViewRepresentable {
 
    let landmarks: [Landmark]
    
    func makeUIView(context: UIViewRepresentableContext<MapsView>) -> MKMapView {
        let mapView = MKMapView()
        
        mapView.delegate = context.coordinator
        //manager.delegate = context.coordinator
        
        mapView.showsUserLocation = true
        
        return mapView
    }
    
    func makeCoordinator() -> Coordinator{
        Coordinator(self)
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapsView>) {
        updateAnnotations(from: uiView)
    }
    
    private func updateAnnotations(from mapView: MKMapView){
        mapView.removeAnnotations(mapView.annotations)
        let annotations = self.landmarks.map(LandmarkAnnotation.init)
        mapView.addAnnotations(annotations)
    }
}
//---- End - Google Maps View Integration ---- //
