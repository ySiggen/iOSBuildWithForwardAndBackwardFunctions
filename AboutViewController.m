//
//  AboutViewController.m
//  Unity-iPhone
//
//  Created by Yvan Siggen on 01.06.17.
//
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.navigationController setNavigationBarHidden:YES];
    
    self.lisaTextView.font = [UIFont fontWithName:@"HypatiaSansPro-BoldIt" size:19.0];
    self.yvanTextView.font = [UIFont fontWithName:@"HypatiaSansPro-BoldIt" size:19.0];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)goBackFromAbout:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];

}
@end
