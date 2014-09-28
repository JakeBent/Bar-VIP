#import "RewardsCollectionView.h"
#import "RewardCardCell.h"
#import "RewardHeaderCell.h"

@implementation RewardsCollectionView

-(void)viewDidLoad {
    [super viewDidLoad];

}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    RewardCardCell *cell = (RewardCardCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"RewardCardCell" forIndexPath:indexPath];

    cell.imageView.image = [UIImage imageNamed:@"Olive-reward-card"];

    return cell;

}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 9;
}

@end
