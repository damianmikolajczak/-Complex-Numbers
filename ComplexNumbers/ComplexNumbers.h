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


-(id) initWithReal: (double) real andImaginary: (double) imaginary;
-(id) initWithModulus: (double) modulus andArgument: (double) arg;
-(void) calculateModulusAndArgument;

-(void) add: (ComplexNumbers *) CompNumb;
-(void) subtract: (ComplexNumbers *) CompNumb;
-(void) multipy: (ComplexNumbers *) CompNumb;
-(void) divide: (ComplexNumbers *) CompNumb;

-(void) complexConjugate;

-(void) printAlgebraicWithPrecision: (NSUInteger) prec;
-(void) printRawAlgebraic;

@end
