//
//  ViewController.swift
//  UserLocation
//
//  Created by GaneshKumar Gunju on 25/05/18.
//  Copyright © 2018 vaayooInc. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
import GoogleMaps
class ViewController: UIViewController,CLLocationManagerDelegate {
    @IBOutlet weak var mapView: MKMapView!
    let locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
        
//        GMSServices.provideAPIKey("AIzaSyCFO0ufqj8Yr8wkO7KgdKxa3OhrMFSt884")
//        let camera = GMSCameraPosition.camera(withLatitude: 14.412405, longitude: 78.228370, zoom: 12.0)
//        //let mapView = GMSMapView.map(withFrame: 0, camera: camera)
//        let currentlocation = CLLocationCoordinate2DMake(14.412405, 78.228370)
//        let marker = GMSMarker(position: currentlocation)
//        marker.title = "pulivendula"
//        marker.snippet = "kadapa"

        
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {

        let location = locations[0]
        let center = location.coordinate
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: center, span: span)


        mapView.setRegion(region, animated: true)
        mapView.showsUserLocation = true

            }
    //AIzaSyCFO0ufqj8Yr8wkO7KgdKxa3OhrMFSt884

}
