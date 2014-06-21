//
//  Song.m
//  JukeBox
//
//  Created by Sunayna Jain on 6/19/14.
//  Copyright (c) 2014 LittleAuk. All rights reserved.
//

#import "Song.h"

@implementation Song

-(id)initWithTitle:(NSString*)title andArtist:(NSString*)artist andAlbum:(NSString*)album andFileName:(NSString*)fileName
{
    self = [super init];
    if (self)
    {
        self.title = title;
        self.artist = artist;
        self.album = album;
        self.fileName = fileName;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Title %@ Artist %@ Album %@", self.title, self.artist, self.album];
}

@end
