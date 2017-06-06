//
//  AlbumViewController.h
//  Unity-iPhone
//
//  Created by Yvan Siggen on 02.06.17.
//
//

#import <UIKit/UIKit.h>
#import "MusicViewController.h"

@interface AlbumViewController : UIViewController <UIGestureRecognizerDelegate>
- (IBAction)backButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end
