//
//  Cryptor.h
//  Cryptor
//
//  Created by K, Santhosh on 23/04/17.
//  Copyright © 2017 K, Santhosh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cryptor : NSObject

+ (instancetype _Nonnull)new OBJC_UNAVAILABLE("Use shared instance.");

- (instancetype _Nonnull)init OBJC_UNAVAILABLE("Use shared instance.");

+ (instancetype _Nonnull)sharedInstance;

- (NSData * _Nullable)encryptedDataOf:(NSData * _Nonnull)inputData withKey:(NSString * _Nullable)key;
- (NSData * _Nullable)decryptedDataOf:(NSData * _Nonnull)inputData withKey:(NSString * _Nullable)key;

@end
