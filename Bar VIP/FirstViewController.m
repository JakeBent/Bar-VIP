#import "FirstViewController.h"

@interface FirstViewController ()


@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIImageView *backgroundImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"blurredbackground-dark"]];
    backgroundImageView.contentMode = UIViewContentModeScaleAspectFill;
    self.view = backgroundImageView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
