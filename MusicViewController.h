//
//  MusicViewController.h
//  Unity-iPhone
//
//  Created by Yvan Siggen on 01.06.17.
//
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "UnityAppController.h"
#import "UI/UnityView.h"
#import "UI/UnityViewControllerBase.h"
#import "songTableViewCell.h"

@interface MusicViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>{
    UnityDefaultViewController *unityViewController;
    UnityAppController *unityController;
    AVAudioPlayer *audioPlayer;
    int currentSong;
    bool isSongPlaying;
}
- (IBAction)goBackFromMusic:(id)sender;
- (IBAction)play:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)releaseFastForward:(id)sender;
- (IBAction)pressFastForward:(id)sender;
- (IBAction)releaseFastBackward:(id)sender;
- (IBAction)pressFastBackward:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *playButton;

@end
