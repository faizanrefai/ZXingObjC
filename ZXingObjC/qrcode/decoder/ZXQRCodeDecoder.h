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

/**
 * The main class which implements QR Code decoding -- as opposed to locating and extracting
 * the QR Code from an image.
 */

@class ZXBitMatrix, ZXDecodeHints, ZXDecodeHints, ZXDecoderResult;

@interface ZXQRCodeDecoder : NSObject

- (ZXDecoderResult *) decode:(BOOL **)image length:(unsigned int)length error:(NSError **)error;
- (ZXDecoderResult *) decode:(BOOL **)image length:(unsigned int)length hints:(ZXDecodeHints *)hints error:(NSError **)error;
- (ZXDecoderResult *) decodeMatrix:(ZXBitMatrix *)bits error:(NSError **)error;
- (ZXDecoderResult *) decodeMatrix:(ZXBitMatrix *)bits hints:(ZXDecodeHints *)hints error:(NSError **)error;

@end
