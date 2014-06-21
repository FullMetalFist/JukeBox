//
//  Playlist.h
//  JukeBox
//
//  Created by Sunayna Jain on 6/19/14.
//  Copyright (c) 2014 LittleAuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Song.h"

@interface Playlist : NSObject

@property (strong, nonatomic) NSArray *songs;

@property (strong, nonatomic) NSArray *orderedSongs;

-(id)initWithsongs:(NSArray*)songs;

- (NSArray*)sortSongsByTitle;

- (NSArray*)sortSongsByArtist;

- (NSArray*)sortSongsByAlbum;

- (NSString *)description;

- ( Song*)songAtPosition:(NSNumber *)position;

@end
