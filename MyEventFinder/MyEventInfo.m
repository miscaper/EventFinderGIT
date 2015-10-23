//
//  MyEventInfo.m
//  MyEventFinder
//
//  Created by Guo Xiaoyu on 10/12/15.
//  Copyright © 2015 Xiaoyu Guo. All rights reserved.
//

#import "MyEventInfo.h"

@implementation MyEventInfo

@synthesize nameOfEvent;
@synthesize timeOfEvent;
@synthesize dateOfEvent;
@synthesize locationOfEvent;
@synthesize imageOfEvent;
@synthesize introOfEvent;
@synthesize posterOfEvent;
@synthesize imageData;
@synthesize imageOfPoster;

- (id)initWithCoder:(NSCoder *)decoder {
    if (self = [super init]) {
        self.nameOfEvent = [decoder decodeObjectForKey:@"nameOfEvent"];
        self.timeOfEvent = [decoder decodeObjectForKey:@"timeOfEvent"];
        self.dateOfEvent = [decoder decodeObjectForKey:@"dateOfEvent"];
        self.locationOfEvent = [decoder decodeObjectForKey:@"locationOfEvent"];
        self.imageOfEvent = [decoder decodeObjectForKey:@"imageOfEvent"];
        self.introOfEvent = [decoder decodeObjectForKey:@"introOfEvent"];
        self.posterOfEvent = [decoder decodeObjectForKey:@"posterOfEvent"];
        self.imageData = [decoder decodeObjectForKey:@"imageData"];
        self.imageOfPoster = [decoder decodeObjectForKey:@"imageOfPoster"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:nameOfEvent forKey:@"nameOfEvent"];
    [encoder encodeObject:timeOfEvent forKey:@"timeOfEvent"];
    [encoder encodeObject:dateOfEvent forKey:@"dateOfEvent"];
    [encoder encodeObject:locationOfEvent forKey:@"locationOfEvent"];
    [encoder encodeObject:imageOfEvent forKey:@"imageOfEvent"];
    [encoder encodeObject:introOfEvent forKey:@"introOfEvent"];
    [encoder encodeObject:posterOfEvent forKey:@"posterOfEvent"];
    [encoder encodeObject:imageData forKey:@"imageData"];
    [encoder encodeObject:imageOfPoster forKey:@"imageOfPoster"];
}


@end