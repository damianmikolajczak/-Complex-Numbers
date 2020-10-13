//
//  ComplexNumbers.h
//  ComplexNumbers
//
//  Created by Damian Mikołajczak on 13/10/2020.
//

#import <Foundation/Foundation.h>

@interface ComplexNumbers : NSObject
@property double im;
@property double re;
@property double mod;
@property double arg;

-(void) initWithReal: (double)real andImaginary: (double)imaginary;
-(void) initWithModulus: (double)modulus andArgument: (double)arg;

-(void) add: (ComplexNumbers *) CompNumb;
-(void) subtract: (ComplexNumbers *) CompNumb;
-(void) multipy: (ComplexNumbers *) CompNumb;
-(void) divide: (ComplexNumbers *) CompNumb;

@end
