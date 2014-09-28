#import <UIKit/UIKit.h>
#import <GoogleMaps/GoogleMaps.h>

@interface MapViewController : UIViewController <GMSMapViewDelegate>

@property (nonatomic, retain) GMSMapView *mapView;
@property (nonatomic, weak) IBOutlet UIView *viewForMap;

@end
