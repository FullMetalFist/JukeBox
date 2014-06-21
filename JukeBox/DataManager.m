//
//  DataManager.m
//  JukeBox
//
//  Created by Sunayna Jain on 6/19/14.
//  Copyright (c) 2014 LittleAuk. All rights reserved.
//

#import "DataManager.h"

@implementation DataManager

//+ (id)sharedManager {
//    static DataManager *sharedMyManager = nil;
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        sharedMyManager = [[self alloc] init];
//    });
//    return sharedMyManager;
//}

-(NSArray*)titles
{
    if (!_titles)
    {
        _titles = [[NSArray alloc]initWithObjects:@"Chal Diye", @"Arziyaan", @"Khwaja mere khwaja", @"Saiyyan", @"Teri Deewani", nil];
    }
    return _titles;
}

-(NSArray*)artists
{
    if (!_artists)
    {
        _artists = [[NSArray alloc] initWithObjects:@"Zeb & Haniya", @"Javed Ali", @"A.R. Rehman", @"Kailash Kher", @"Kailash Kher", nil];
    }
    return _artists;
}

-(NSArray*)albumNames
{
    if (!_albumNames)
    {
        _albumNames = [[NSArray alloc]initWithObjects:@"Coke Studio", @"Delhi 6", @"Jodhaa Akbar", @"Saiyyan", @"Kailasa", @"Kailasa", nil];
    }
    return _albumNames;
}

-(NSArray*)fileNames
{
    if (!_fileNames)
    {
        _fileNames = [[NSArray alloc]initWithObjects:@"Chal Diye", @"Delhi6",@"JodhaaAkbar",@"Saiyyan", @"TeriDeewani", nil];
    }
    return _fileNames;
}

-(NSArray *)songs
{
    if (!_songs)
    {
        NSMutableArray *tempArray = [[NSMutableArray alloc]init];
        for (int i=0; i<[self.titles count]; i++)
        {
            Song *song = [[Song alloc]initWithTitle:self.titles[i] andArtist:self.artists[i] andAlbum:self.albumNames[i] andFileName:self.fileNames[i]];
            [tempArray addObject:song];
        }
        _songs = tempArray;
    }
    return _songs;
}

-(Playlist*)playlist
{
    if (!_playlist)
    {
        _playlist = [[Playlist alloc]initWithsongs:self.songs];
    }
    return _playlist;
}

@end
