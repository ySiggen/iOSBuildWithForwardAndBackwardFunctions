//
//  ArtistViewController.m
//  Unity-iPhone
//
//  Created by Yvan Siggen on 02.06.17.
//
//

#import "ArtistViewController.h"

@interface ArtistViewController ()

@end

@implementation ArtistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(ClickedOnImageEvent:)];
    [tapRecognizer setNumberOfTapsRequired:1];
    [tapRecognizer setDelegate:self];
    
    self.imageView.userInteractionEnabled = YES;
    [self.imageView addGestureRecognizer:tapRecognizer];
    
    self.codeLabel.layer.borderColor = [UIColor blackColor].CGColor;
    self.codeLabel.layer.borderWidth = 2.0;
    
    //UIFont *font = [UIFont fontWithName:@"HypatiaSansPro" size:17.0];
    //UIFontDescriptor *fontDescriptor = [font.fontDescriptor  fontDescriptorWithSymbolicTraits: UIFontDescriptorTraitBold | UIFontDescriptorTraitItalic ];
    self.codeLabel.font = [UIFont fontWithName:@"HypatiaSansPro-BoldIt" size:17.0];
    //self.codeLabel.font = [UIFont fontWithDescriptor:fontDescriptor size:17.0];
    
    /*NSArray *names = [UIFont familyNames];
    NSLog(@"Font FamilyNames : ");
    for (NSString *name in names) {
        NSLog(@"Font Family:  %@",name);
        NSArray *fontFaces = [UIFont fontNamesForFamilyName:name];
        for (NSString *fname in fontFaces) {
            NSLog(@"   %@",fname);
        }
    }*/
    /*for (NSString* family in [UIFont familyNames])
    {
        NSLog(@"%@", family);
        
        for (NSString* name in [UIFont fontNamesForFamilyName: family])
        {
            NSLog(@"  %@", name);
        }
    }*/
}


- (void)ClickedOnImageEvent:(id) sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    AlbumViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"albumVC"];
    [self.navigationController pushViewController:vc animated:YES];
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



- (IBAction)backToAR:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
