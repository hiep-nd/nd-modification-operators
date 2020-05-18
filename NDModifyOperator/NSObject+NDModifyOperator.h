//
//  NSObject+NDModifyOperator.h
//  NDModifyOperator
//
//  Created by Nguyen Duc Hiep on 2/4/20.
//  Copyright © 2020 Nguyen Duc Hiep. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (NDModifyOperator)

- (instancetype)nd_modify:(void (^)(id))modify
    __attribute__((warn_unused_result))NS_SWIFT_UNAVAILABLE("For ObjC only.");
- (void)nd_done:(void (^)(id))done NS_SWIFT_UNAVAILABLE("For ObjC only.");

@end

NS_ASSUME_NONNULL_END
