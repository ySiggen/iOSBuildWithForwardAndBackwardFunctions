//
//  AboutViewController.h
//  Unity-iPhone
//
//  Created by Yvan Siggen on 01.06.17.
//
//

#import <UIKit/UIKit.h>

@interface AboutViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextView;
@property (weak, nonatomic) IBOutlet UITextView *lisaTextView;
@property (weak, nonatomic) IBOutlet UITextView *yvanTextView;

- (IBAction)goBackFromAbout:(id)sender;

@end
