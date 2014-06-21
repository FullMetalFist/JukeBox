//
//  ViewController.m
//  JukeBox
//
//  Created by Sunayna Jain on 6/19/14.
//  Copyright (c) 2014 LittleAuk. All rights reserved.
//

#import "ViewController.h"
#import "DataManager.h"
#import "Playlist.h"
#import "Song.h"

@interface ViewController ()

@property (strong, nonatomic) Playlist *playlist;
@property (strong, nonatomic) DataManager *manager;
@property (strong, nonatomic) AVAudioPlayer *audioPlayer;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.playlist = [self createPlaylist];
    self.playlistTextView.text = [self createPlaylist].description;
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(Playlist*)createPlaylist
{
    self.manager = [[DataManager alloc]init];
    return self.manager.playlist;
}

- (IBAction)playButtonPressed:(id)sender {
    [self.audioPlayer play];
}

- (IBAction)stopButtonPressed:(id)sender {
    
    [self.audioPlayer stop];
}

- (IBAction)SongNumberEntered:(id)sender
{
    [self setSelectedSong];
}

-(void)setSelectedSong
{
    Song *selectedSong = [self.playlist songAtPosition:[NSNumber numberWithInteger:[self.songTextField.text integerValue]]];
    NSLog(@"song is %@", [selectedSong description]);
    [self setupAVAudioPlayWithFileName:selectedSong.fileName];
}

- (IBAction)titleSort:(id)sender
{
    self.playlist.songs = [self.playlist sortSongsByTitle];
    self.playlistTextView.text = self.playlist.description;
    [self updateSelectedSong];
}

- (IBAction)artistSort:(id)sender
{
    self.playlist.songs = [self.playlist sortSongsByArtist];
    self.playlistTextView.text = self.playlist.description;
    [self updateSelectedSong];
}

- (IBAction)albumSort:(id)sender
{
    self.playlist.songs = [self.playlist sortSongsByAlbum];
    self.playlistTextView.text = self.playlist.description;
    [self updateSelectedSong];
}

-(void)updateSelectedSong
{
    if (self.songTextField.text.length>0)
    {
        [self setSelectedSong];
    }
}

- (void)setupAVAudioPlayWithFileName:(NSString *)fileName
{
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                         pathForResource:fileName
                                         ofType:@"mp3"]];
    NSError *error;
    self.audioPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:url error:&error];
    if (error)
    {
        NSLog(@"Error in audioPlayer: %@",[error localizedDescription]);
    } else
    {
        [self.audioPlayer prepareToPlay];
    }
}

@end
