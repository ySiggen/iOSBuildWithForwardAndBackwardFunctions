//
//  MusicViewController.m
//  Unity-iPhone
//
//  Created by Yvan Siggen on 01.06.17.
//
//

#import "MusicViewController.h"

@interface MusicViewController ()

@end

@implementation MusicViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.navigationController setNavigationBarHidden:YES];

    self.tableView.separatorColor = [UIColor clearColor];
    
    currentSong = -1;
    isSongPlaying = NO;
    
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

- (IBAction)goBackFromMusic:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];

}

- (IBAction)play:(id)sender {
    if(audioPlayer.isPlaying){
        [audioPlayer pause];
        UIImage *play = [UIImage imageNamed:@"play_media_player"];
        [self.playButton setImage:play forState:UIControlStateNormal];
    }else if(!isSongPlaying){
        NSString *path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_01_Intro" ofType:@"wav"];
        NSURL *soundURL = [NSURL fileURLWithPath:path];
        currentSong = 0;
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundURL error:nil];
        [audioPlayer play];
        
        isSongPlaying = YES;
        
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:currentSong inSection:0];
        songTableViewCell *cell = (songTableViewCell *) [self.tableView cellForRowAtIndexPath:indexPath];
        [self configureCell:cell atIndexPath:indexPath shouldSelect:YES];
        
        
        UIImage *pause = [UIImage imageNamed:@"pause_media_player"];
        [self.playButton setImage:pause forState:UIControlStateNormal];
    }else{
        [audioPlayer play];
        UIImage *pause = [UIImage imageNamed:@"pause_media_player"];
        [self.playButton setImage:pause forState:UIControlStateNormal];

    }
}

- (void)configureCell:(songTableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath shouldSelect:(bool) shouldSelect
{
    if(shouldSelect){
        [cell.songLabel setFont:[UIFont fontWithName:@"HypatiaSansPro-BoldIt" size:22.0]];
    }else{
        [cell.songLabel setFont:[UIFont fontWithName:@"HypatiaSansPro-Regular" size:22.0]];
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    songTableViewCell *cell = (songTableViewCell *) [tableView cellForRowAtIndexPath:indexPath];
    [cell.songLabel setFont:[UIFont fontWithName:@"HypatiaSansPro-BoldIt" size:22.0]];
    
    if(audioPlayer.isPlaying){
        [audioPlayer stop];
    }
    
    currentSong = indexPath.row;
    NSString *path;
    NSURL *soundURL;
    switch (indexPath.row) {
        case 0:
            path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_01_Intro" ofType:@"wav"];
            soundURL = [NSURL fileURLWithPath:path];
            break;
        case 1:
            path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_02_The Battle" ofType:@"wav"];
            soundURL = [NSURL fileURLWithPath:path];
            break;
        case 2:
            path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_03_I Don't Need It" ofType:@"wav"];
            soundURL = [NSURL fileURLWithPath:path];
            break;
        case 3:
            path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_04_Square People" ofType:@"wav"];
            soundURL = [NSURL fileURLWithPath:path];
            break;
        case 4:
            path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_05_Madness" ofType:@"wav"];
            soundURL = [NSURL fileURLWithPath:path];
            break;
        case 5:
            path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_06_Ways to Go" ofType:@"wav"];
            soundURL = [NSURL fileURLWithPath:path];
            break;
        case 6:
            path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_07_You're Mine" ofType:@"wav"];
            soundURL = [NSURL fileURLWithPath:path];
            break;
        case 7:
            path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_08_Days" ofType:@"wav"];
            soundURL = [NSURL fileURLWithPath:path];
            break;
        case 8:
            path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_09_Just in Case" ofType:@"wav"];
            soundURL = [NSURL fileURLWithPath:path];
            break;
        case 9:
            path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_10_You Made It, Pt 1" ofType:@"wav"];
            soundURL = [NSURL fileURLWithPath:path];
            break;
        case 10:
            path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_11_You Made It, Pt 2" ofType:@"wav"];
            soundURL = [NSURL fileURLWithPath:path];
            break;
        case 11:
            path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_12_Years to Build" ofType:@"wav"];
            soundURL = [NSURL fileURLWithPath:path];
            break;
        default:
            break;
    }
    
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundURL error:nil];
    [audioPlayer play];
    
    isSongPlaying = YES;
    
    UIImage *pause = [UIImage imageNamed:@"pause_media_player"];
    [self.playButton setImage:pause forState:UIControlStateNormal];
    
    for (int i = 0; i < 12; i++) {
        if(i != currentSong){
            NSIndexPath *indexPath = [NSIndexPath indexPathForRow:i inSection:0];
            songTableViewCell *cell = (songTableViewCell *) [self.tableView cellForRowAtIndexPath:indexPath];
            [self configureCell:cell atIndexPath:indexPath shouldSelect:NO];
        }
    }
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    songTableViewCell *cell = (songTableViewCell *) [tableView cellForRowAtIndexPath:indexPath];
    [cell.songLabel setFont:[UIFont fontWithName:@"HypatiaSansPro-Regular" size:22.0]];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 12;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    songTableViewCell *cell = (songTableViewCell *) [tableView dequeueReusableCellWithIdentifier:@"songCell"];
    
    cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    UIView *backgroundColorView = [[UIView alloc] init];
    backgroundColorView.backgroundColor = [UIColor clearColor];
    [cell setSelectedBackgroundView:backgroundColorView];
    
    [cell.songLabel setFont:[UIFont fontWithName:@"HypatiaSansPro-Regular" size:22.0]];
    
    switch (indexPath.row) {
        case 0:
            cell.songLabel.text = @"1. Intro 2:21";
            break;
        case 1:
            cell.songLabel.text = @"2. The Battle 4:12";
            break;
        case 2:
            cell.songLabel.text = @"3. I Don't Need It 5:47";
            break;
        case 3:
            cell.songLabel.text = @"4. Square People 4:48";
            break;
        case 4:
            cell.songLabel.text = @"5. Madness 2:09";
            break;
        case 5:
            cell.songLabel.text = @"6. Ways To Go 3:27";
            break;
        case 6:
            cell.songLabel.text = @"7. You're Mine 5:08";
            break;
        case 7:
            cell.songLabel.text = @"8. Days 3:47";
            break;
        case 8:
            cell.songLabel.text = @"9. Just In Case 4:39";
            break;
        case 9:
            cell.songLabel.text = @"10. You Made It (Part I) 3:25";
            break;
        case 10:
            cell.songLabel.text = @"11. You Made It (Part II) 6:14";
            break;
        case 11:
            cell.songLabel.text = @"12. Years To Build 5:16";
            break;
        default:
            break;
    }
    //cell.songLabel.text = [NSString stringWithFormat:@"set text %ld ", (long)indexPath.row];
    
    return cell;
    
}
- (IBAction)releaseFastForward:(id)sender {
}

- (IBAction)pressFastForward:(id)sender {
    
    if(currentSong != -1){
        if(audioPlayer.isPlaying){
            [audioPlayer stop];
        }
        
        NSString *path;
        NSURL *soundURL;
        switch (currentSong) {
            case 11:
                path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_01_Intro" ofType:@"wav"];
                soundURL = [NSURL fileURLWithPath:path];
                break;
            case 0:
                path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_02_The Battle" ofType:@"wav"];
                soundURL = [NSURL fileURLWithPath:path];
                break;
            case 1:
                path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_03_I Don't Need It" ofType:@"wav"];
                soundURL = [NSURL fileURLWithPath:path];
                break;
            case 2:
                path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_04_Square People" ofType:@"wav"];
                soundURL = [NSURL fileURLWithPath:path];
                break;
            case 3:
                path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_05_Madness" ofType:@"wav"];
                soundURL = [NSURL fileURLWithPath:path];
                break;
            case 4:
                path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_06_Ways to Go" ofType:@"wav"];
                soundURL = [NSURL fileURLWithPath:path];
                break;
            case 5:
                path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_07_You're Mine" ofType:@"wav"];
                soundURL = [NSURL fileURLWithPath:path];
                break;
            case 6:
                path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_08_Days" ofType:@"wav"];
                soundURL = [NSURL fileURLWithPath:path];
                break;
            case 7:
                path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_09_Just in Case" ofType:@"wav"];
                soundURL = [NSURL fileURLWithPath:path];
                break;
            case 8:
                path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_10_You Made It, Pt 1" ofType:@"wav"];
                soundURL = [NSURL fileURLWithPath:path];
                break;
            case 9:
                path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_11_You Made It, Pt 2" ofType:@"wav"];
                soundURL = [NSURL fileURLWithPath:path];
                break;
            case 10:
                path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_12_Years to Build" ofType:@"wav"];
                soundURL = [NSURL fileURLWithPath:path];
                break;
            default:
                break;
        }
        
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:currentSong inSection:0];
        songTableViewCell *cell = (songTableViewCell *) [self.tableView cellForRowAtIndexPath:indexPath];
        [self configureCell:cell atIndexPath:indexPath shouldSelect:NO];
        
        if(currentSong < 11){
            currentSong++;
        }else{
            currentSong = 0;
        }
        
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundURL error:nil];
        [audioPlayer play];
        
        indexPath = [NSIndexPath indexPathForRow:currentSong inSection:0];
        cell = (songTableViewCell *) [self.tableView cellForRowAtIndexPath:indexPath];
        [self configureCell:cell atIndexPath:indexPath shouldSelect:YES];
        
        
        UIImage *pause = [UIImage imageNamed:@"pause_media_player"];
        [self.playButton setImage:pause forState:UIControlStateNormal];

    }
    
    
}

- (IBAction)releaseFastBackward:(id)sender {
}

- (IBAction)pressFastBackward:(id)sender {
    if(currentSong != -1){
        if(audioPlayer.isPlaying){
            [audioPlayer stop];
        }
        
        NSString *path;
        NSURL *soundURL;
        switch (currentSong) {
            case 1:
                path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_01_Intro" ofType:@"wav"];
                soundURL = [NSURL fileURLWithPath:path];
                break;
            case 2:
                path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_02_The Battle" ofType:@"wav"];
                soundURL = [NSURL fileURLWithPath:path];
                break;
            case 3:
                path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_03_I Don't Need It" ofType:@"wav"];
                soundURL = [NSURL fileURLWithPath:path];
                break;
            case 4:
                path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_04_Square People" ofType:@"wav"];
                soundURL = [NSURL fileURLWithPath:path];
                break;
            case 5:
                path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_05_Madness" ofType:@"wav"];
                soundURL = [NSURL fileURLWithPath:path];
                break;
            case 6:
                path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_06_Ways to Go" ofType:@"wav"];
                soundURL = [NSURL fileURLWithPath:path];
                break;
            case 7:
                path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_07_You're Mine" ofType:@"wav"];
                soundURL = [NSURL fileURLWithPath:path];
                break;
            case 8:
                path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_08_Days" ofType:@"wav"];
                soundURL = [NSURL fileURLWithPath:path];
                break;
            case 9:
                path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_09_Just in Case" ofType:@"wav"];
                soundURL = [NSURL fileURLWithPath:path];
                break;
            case 10:
                path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_10_You Made It, Pt 1" ofType:@"wav"];
                soundURL = [NSURL fileURLWithPath:path];
                break;
            case 11:
                path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_11_You Made It, Pt 2" ofType:@"wav"];
                soundURL = [NSURL fileURLWithPath:path];
                break;
            case 0:
                path = [[NSBundle mainBundle] pathForResource:@"Weval/Weval Disc/Weval_Weval Disc 3_12_Years to Build" ofType:@"wav"];
                soundURL = [NSURL fileURLWithPath:path];
                break;
            default:
                break;
        }
        
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:currentSong inSection:0];
        songTableViewCell *cell = (songTableViewCell *) [self.tableView cellForRowAtIndexPath:indexPath];
        [self configureCell:cell atIndexPath:indexPath shouldSelect:NO];
        
        if(currentSong > 0){
            currentSong--;
        }else{
            currentSong = 11;
        }
        
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundURL error:nil];
        [audioPlayer play];
        
        indexPath = [NSIndexPath indexPathForRow:currentSong inSection:0];
        cell = (songTableViewCell *) [self.tableView cellForRowAtIndexPath:indexPath];
        [self configureCell:cell atIndexPath:indexPath shouldSelect:YES];
        
        
        UIImage *pause = [UIImage imageNamed:@"pause_media_player"];
        [self.playButton setImage:pause forState:UIControlStateNormal];
    }
}
@end
