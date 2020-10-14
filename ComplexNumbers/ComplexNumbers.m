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

-(id) initWithReal: (double) real andImaginary: (double)imaginary
{
    self = [super init];
    [self setRe: real];
    [self setIm: imaginary];

    return self;
}


-(id) initWithModulus: (double) modulus andArgument: (double)argument
{
    self = [super init];
    self.mod = modulus;
    self.arg = argument;
    
    return self;
}

-(void) calculateModulusAndArgument
{
    [self setMod:sqrt([self re]*[self re]+[self im]*[self im])];
    [self setArg:atan([self im]/[self re])];
}


//--------------------------------------------------- MATH FUNCTION ---------------------------------------------------
-(void) add: (ComplexNumbers *) CompNumb
{
    [self setRe:[self re] + [CompNumb re]];
    [self setIm:[self im] + [CompNumb im]];
    [self calculateModulusAndArgument];
}

-(void) subtract: (ComplexNumbers *) CompNumb
{
    [self setRe:[self re] - [CompNumb re]];
    [self setIm:[self im] - [CompNumb im]];
    [self calculateModulusAndArgument];
}

-(void) multipy: (ComplexNumbers *) CompNumb
{
    double tempRe = [self re];
    double tempIm = [self im];
    
    [self setRe:(tempRe*CompNumb.re-tempIm*CompNumb.im)];
    [self setIm:(tempRe*CompNumb.im+tempIm*CompNumb.re)];
    [self calculateModulusAndArgument];
}

-(void) divide: (ComplexNumbers *) CompNumb
{
    double tempRe = [self re];
    double tempIm = [self im];
    
    [self setRe:(tempRe*CompNumb.re+tempIm*CompNumb.im)/(CompNumb.re*CompNumb.re+CompNumb.im*CompNumb.im)];
    [self setIm:(tempIm*CompNumb.re-tempRe*CompNumb.im)/(CompNumb.re*CompNumb.re+CompNumb.im*CompNumb.im)];
    [self calculateModulusAndArgument];
}


//--------------------------------------------------- OPERATIONS ---------------------------------------------------
-(void) complexConjugate
{
    [self setIm: (-1 * [self im])];
    [self calculateModulusAndArgument];
}

//--------------------------------------------------- PRINT FUNCTION ---------------------------------------------------
-(void) printAlgebraicWithPrecision: (NSUInteger) prec
{
    NSNumberFormatter *formatedRe= [[NSNumberFormatter alloc] init];
    NSNumberFormatter *formatedIm= [[NSNumberFormatter alloc] init];
    NSNumber *tempRe = [[NSNumber alloc] initWithDouble:[self re]];
    NSNumber *tempIm = [[NSNumber alloc] initWithDouble:[self im]];
    
    [formatedRe setMaximumFractionDigits:(prec)];
    [formatedRe setMaximumFractionDigits:(prec)];
    
    NSLog(@"(%@) + (%@)j",[formatedRe stringFromNumber: tempRe], [formatedIm stringFromNumber: tempIm]);
}

-(void) printRawAlgebraic
{
    NSLog(@"%.3f + j%.3f",[self re], [self im]);
}
@end
