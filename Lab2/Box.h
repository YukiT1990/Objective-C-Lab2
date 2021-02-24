//
//  Box.h
//  Lab2
//
//  Created by Yuki Tsukada on 2021/02/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Box : NSObject

// public properties
@property float height;
@property float width;
@property float length;
@property NSString* name;

// public methods
- (instancetype) initWithHeight: (float) height AndWidth: (float) width AndLength: (float) length AndName: (NSString *) name;
- (float) calculateVolume;
- (NSString *) howManyTimesFitInsideTheOther: (Box*) anotherBox;

@end

NS_ASSUME_NONNULL_END
