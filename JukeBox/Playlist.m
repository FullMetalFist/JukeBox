//
//  Playlist.m
//  JukeBox
//
//  Created by Sunayna Jain on 6/19/14.
//  Copyright (c) 2014 LittleAuk. All rights reserved.
//

#import "Playlist.h"

@implementation Playlist

-(id)initWithsongs:(NSArray*)songs
{
    self = [super init];
    if (self)
    {
        self.songs = songs;
    }
    return self;
}

- (NSArray*)sortSongsByTitle
{
    NSSortDescriptor *sortTitle = [NSSortDescriptor sortDescriptorWithKey:@"title" ascending:YES];
    NSSortDescriptor *sortArtist = [NSSortDescriptor sortDescriptorWithKey:@"artist" ascending:YES];
    NSArray *sortedArray = [self.songs sortedArrayUsingDescriptors:@[sortTitle, sortArtist]];
    return sortedArray;
}

- (NSArray*)sortSongsByArtist
{
    NSSortDescriptor *sortArtist = [NSSortDescriptor sortDescriptorWithKey:@"artist" ascending:YES];
    NSSortDescriptor *sortAlbum = [NSSortDescriptor sortDescriptorWithKey:@"album" ascending:YES];
    NSArray *sortedArray = [self.songs sortedArrayUsingDescriptors:@[sortArtist, sortAlbum]];
    return sortedArray;
}

- (NSArray*)sortSongsByAlbum
{
    NSSortDescriptor *sortAlbum = [NSSortDescriptor sortDescriptorWithKey:@"album" ascending:YES];
    NSSortDescriptor *sortTitle = [NSSortDescriptor sortDescriptorWithKey:@"title" ascending:YES];
    NSArray *sortedArray = [self.songs sortedArrayUsingDescriptors:@[sortAlbum, sortTitle]];
    return sortedArray;
}

- (NSString *)description
{
    NSString *desc= @"";
    
    for (int i=0; i<[self.songs count]; i++)
    {
        Song *song = self.songs[i];
        desc = [desc stringByAppendingString:[NSString stringWithFormat:@"%d. Title: %@ Artist: %@ Album: %@\n\n", i+1, song.title, song.artist, song.album]];
    }
    return desc;
}

- (Song*)songAtPosition:(NSNumber *)position
{
    Song *song;
    if ([position integerValue]<=[self.songs count])
    {
    song = self.songs[[position integerValue]-1];
    }
    else
    {
        NSLog(@"No song at position %ld", (long)[position integerValue]);
    }
    return song;
}



@end
