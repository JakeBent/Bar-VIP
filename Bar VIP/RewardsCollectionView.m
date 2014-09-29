#import "RewardsCollectionView.h"
#import "RewardCardCell.h"
#import "RewardHeaderCell.h"

@implementation RewardsCollectionView

-(void)viewDidLoad {
    [super viewDidLoad];
    [self setNeedsStatusBarAppearanceUpdate];

    UIImageView *backgroundImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"blurredbackground-dark"]];
    backgroundImageView.contentMode = UIViewContentModeScaleAspectFill;
    self.collectionView.backgroundView = backgroundImageView;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    RewardCardCell *cell = (RewardCardCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"RewardCardCell" forIndexPath:indexPath];

    cell.imageView.image = [UIImage imageNamed:@"reward-card-light"];

    return cell;

}

-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    RewardHeaderCell *header = nil;

    if ([kind isEqual:UICollectionElementKindSectionHeader])
    {
        header = [collectionView dequeueReusableSupplementaryViewOfKind:kind
                                                    withReuseIdentifier:@"RewardHeaderCell"
                                                           forIndexPath:indexPath];
        header.backgroundColor = [UIColor colorWithWhite:1.f alpha:.3f];
        UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 30, self.view.frame.size.width, 40)];
        titleLabel.textAlignment = NSTextAlignmentCenter;
        titleLabel.text = @"Rewards";
        titleLabel.font = [UIFont fontWithName:@"TallFilms" size:40.f];
        titleLabel.textColor = [UIColor whiteColor];
        [header addSubview:titleLabel];
        
    }
    return header;
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 30;
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

@end
