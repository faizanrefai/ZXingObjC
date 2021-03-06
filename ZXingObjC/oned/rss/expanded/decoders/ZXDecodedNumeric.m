/*
 * Copyright 2012 ZXing authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "ZXDecodedNumeric.h"

const int FNC1 = 10;

@interface ZXDecodedNumeric ()

@property (nonatomic, assign) int firstDigit;
@property (nonatomic, assign) int secondDigit;

@end


@implementation ZXDecodedNumeric

@synthesize firstDigit;
@synthesize secondDigit;

- (id)initWithNewPosition:(int)newPosition firstDigit:(int)aFirstDigit secondDigit:(int)aSecondDigit {
  if (self = [super initWithNewPosition:newPosition]) {
    self.firstDigit = aFirstDigit;
    self.secondDigit = aSecondDigit;

    if (self.firstDigit < 0 || self.firstDigit > 10) {
      [NSException raise:NSInvalidArgumentException format:@"Invalid firstDigit: %d", firstDigit];
    }

    if (self.secondDigit < 0 || self.secondDigit > 10) {
      [NSException raise:NSInvalidArgumentException format:@"Invalid secondDigit: %d", secondDigit];
    }
  }

  return self;
}

- (int)value {
  return self.firstDigit * 10 + self.secondDigit;
}

- (BOOL)firstDigitFNC1 {
  return self.firstDigit == FNC1;
}

- (BOOL)secondDigitFNC1 {
  return self.secondDigit == FNC1;
}

- (BOOL)anyFNC1 {
  return self.firstDigit == FNC1 || self.secondDigit == FNC1;
}

@end
