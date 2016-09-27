//
//  MapViewController.swift
//  KoalaTest
//
//  Created by Philipp Eibl on 9/25/16.
//  Copyright © 2016 Philipp Eibl. All rights reserved.
//

import Foundation
import UIKit
import MapKit
import CoreData

class MapViewController: UIViewController, MKMapViewDelegate  {
    @IBOutlet var mapView: MKMapView!
    @IBOutlet var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createView()
    }

    func createView() {
        let mView = UIView(frame: CGRect(x: view.frame.width, y: 0, width: 200, height: 200))
        mView.backgroundColor = UIColor.white
        scrollView.addSubview(mView)
    }
}
