#import "ProfileViewController.h"

@implementation ProfileViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *backgroundImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"blurredbackground-dark"]];
    backgroundImageView.contentMode = UIViewContentModeScaleAspectFill;
    self.view = backgroundImageView;
}

@end
