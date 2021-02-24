//
//  main.m
//  Lab2
//
//  Created by Yuki Tsukada on 2021/02/23.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Box *box1 = [[Box alloc] initWithHeight: 10 AndWidth: 10 AndLength: 10 AndName: @"Box1"];
        Box *box2 = [[Box alloc] initWithHeight: 5 AndWidth: 5 AndLength: 5 AndName: @"Box2"];
        Box *box3 = [[Box alloc] initWithHeight:3 AndWidth:3 AndLength:3 AndName: @"Box3"];
        
        NSLog(@"The volume of %@ is %.0f.", box1.name, [box1 calculateVolume]);
        NSLog(@"The volume of %@ is %.0f.", box2.name, [box2 calculateVolume]);
        NSLog(@"The volume of %@ is %.0f.", box3.name, [box3 calculateVolume]);
        
        NSLog(@"%@", [box1 howManyTimesFitInsideTheOther: box2]);
        NSLog(@"%@", [box2 howManyTimesFitInsideTheOther: box3]);
        NSLog(@"%@", [box1 howManyTimesFitInsideTheOther: box3]);
    }
    return 0;
}
