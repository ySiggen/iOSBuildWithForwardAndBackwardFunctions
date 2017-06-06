//
//  ArtistViewController.h
//  Unity-iPhone
//
//  Created by Yvan Siggen on 02.06.17.
//
//

#import <UIKit/UIKit.h>
#import "AlbumViewController.h"

@interface ArtistViewController : UIViewController <UIGestureRecognizerDelegate>
- (IBAction)backToAR:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *codeLabel;


@end
