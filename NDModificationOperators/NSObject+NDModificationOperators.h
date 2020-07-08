//
//  NSObject+NDModificationOperators.h
//  NDModificationOperators
//
//  Created by Nguyen Duc Hiep on 2/4/20.
//  Copyright © 2020 Nguyen Duc Hiep. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (NDModificationOperators)

- (instancetype)nd_modify:(void(NS_NOESCAPE ^)(id))modify
    NS_SWIFT_UNAVAILABLE("For ObjC only.");
- (void)nd_done:(void(NS_NOESCAPE ^)(id))done
    NS_SWIFT_UNAVAILABLE("For ObjC only.");

@end

NS_ASSUME_NONNULL_END
