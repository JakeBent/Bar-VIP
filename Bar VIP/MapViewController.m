//
//  MapViewController.m
//  Bar VIP
//
//  Created by Jacob Benton on 9/27/14.
//  Copyright (c) 2014 JakeBent. All rights reserved.
//

#import "MapViewController.h"

@implementation MapViewController

-(void)viewDidLoad {
    [self setUpMapView];
    
}

- (void)setUpMapView {
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:40.678853
                                                            longitude:-74.004657
                                                                 zoom:13];
    self.mapView = [GMSMapView mapWithFrame:self.view.bounds camera:camera];
    self.mapView.myLocationEnabled = YES;
    self.mapView.settings.myLocationButton = YES;
    self.mapView.delegate = self;
    self.view = self.mapView;

}


- (void)mapView:(GMSMapView *)mapView didTapAtCoordinate:(CLLocationCoordinate2D)coordinate {

    NSLog(@"%f, %f", coordinate.latitude, coordinate.longitude);

}

@end
