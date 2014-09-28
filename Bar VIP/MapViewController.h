//
//  MapViewController.h
//  Bar VIP
//
//  Created by Jacob Benton on 9/27/14.
//  Copyright (c) 2014 JakeBent. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleMaps/GoogleMaps.h>

@interface MapViewController : UIViewController <GMSMapViewDelegate>

@property (nonatomic, retain) GMSMapView *mapView;
@property (nonatomic, weak) IBOutlet UIView *viewForMap;

@end
