//
//  ComplexNumbers.m
//  ComplexNumbers
//
//  Created by Damian Mikołajczak on 13/10/2020.
//

#import "ComplexNumbers.h"

@implementation ComplexNumbers
@synthesize im;
@synthesize re;
@synthesize mod;
@synthesize arg;

-(void) initWithReal: (double)real andImaginary: (double)imaginary
{
    re =real;
    im = imaginary;
}

-(void) initWithModulus: (double)modulus andArgument: (double)argument
{
    mod = modulus;
    arg = argument;
}


-(void) add: (ComplexNumbers *) CompNumb
{
    [self setRe:[self re] + [CompNumb re]];
    [self setIm:[self im] + [CompNumb im]] ;
}

-(void) subtract: (ComplexNumbers *) CompNumb
{
    [self setRe:[self re] - [CompNumb re]];
    [self setIm:[self im] - [CompNumb im]] ;
}

-(void) multipy: (ComplexNumbers *) CompNumb
{
    [self setMod:[self mod]*[CompNumb mod]];
    [self setArg:[self arg]+[CompNumb arg]];
}

-(void) divide: (ComplexNumbers *) CompNumb
{
    [self setMod:[self mod]/[CompNumb mod]];
    [self setArg:[self arg]-[CompNumb arg]];
}
@end
