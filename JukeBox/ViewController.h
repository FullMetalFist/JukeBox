//
//  ViewController.h
//  JukeBox
//
//  Created by Sunayna Jain on 6/19/14.
//  Copyright (c) 2014 LittleAuk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController

- (IBAction)playButtonPressed:(id)sender;

- (IBAction)stopButtonPressed:(id)sender;

- (IBAction)SongNumberEntered:(id)sender;

- (IBAction)titleSort:(id)sender;

- (IBAction)artistSort:(id)sender;

- (IBAction)albumSort:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *songTextField;

@property (weak, nonatomic) IBOutlet UITextView *playlistTextView;



@end
