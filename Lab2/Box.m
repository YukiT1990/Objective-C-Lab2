//
//  Box.m
//  Lab2
//
//  Created by Yuki Tsukada on 2021/02/24.
//

#import "Box.h"

@interface Box()

@end

@implementation Box {
    
}

// -: instance method
- (instancetype) initWithHeight: (float) height AndWidth: (float) width AndLength: (float) length AndName:(nonnull NSString*) name
{
    self = [super init];
    if (self) {
        _height = height;
        _width = width;
        _length = length;
        _name = name;
    }
    return self;
}

- (float) calculateVolume
{
    float volume = self.height * self.width * self.length;
    return volume;
}

- (NSString *) howManyTimesFitInsideTheOther: (Box*) anotherBox
{
    float fitTimes = 0.0;
    // The second box is smaller than the first box
    if ([anotherBox calculateVolume] < [self calculateVolume]) {
        fitTimes = floor([self calculateVolume] / [anotherBox calculateVolume]);
        return [NSString stringWithFormat:@"%@ fits %.0f times inside %@.", anotherBox->_name, fitTimes, self->_name];
    // The second box is bigger than the first box
    } else {
        fitTimes = floor([anotherBox calculateVolume] / [self calculateVolume]);
        return [NSString stringWithFormat:@"%@ fits %.0f times inside %@.", self->_name, fitTimes, anotherBox->_name];
    }
}



@end



