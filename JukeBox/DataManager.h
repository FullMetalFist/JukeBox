//
//  DataManager.h
//  JukeBox
//
//  Created by Sunayna Jain on 6/19/14.
//  Copyright (c) 2014 LittleAuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Song.h"
#import "Playlist.h"

@interface DataManager : NSObject

@property (strong, nonatomic) NSArray *titles;
@property (strong, nonatomic) NSArray *artists;
@property (strong, nonatomic) NSArray *albumNames;
@property (strong, nonatomic) NSArray *fileNames;

@property (strong, nonatomic) NSArray *songs;
@property (strong, nonatomic) Playlist *playlist;

//+ (id)sharedManager;

@end
