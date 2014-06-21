//
//  Song.h
//  JukeBox
//
//  Created by Sunayna Jain on 6/19/14.
//  Copyright (c) 2014 LittleAuk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Song : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *artist;
@property (strong, nonatomic) NSString *album;
@property (strong, nonatomic) NSString *fileName;

-(id)initWithTitle:(NSString*)title andArtist:(NSString*)artist andAlbum:(NSString*)album andFileName:(NSString*)fileName;

-(NSString*)description;

@end
