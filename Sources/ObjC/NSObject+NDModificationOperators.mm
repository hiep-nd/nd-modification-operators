//
//  NSObject+NDModificationOperators.mm
//  NDModificationOperators
//
//  Created by Nguyen Duc Hiep on 2/4/20.
//  Copyright © 2020 Nguyen Duc Hiep. All rights reserved.
//

#import <NDModificationOperators/NSObject+NDModificationOperators.h>

@implementation NSObject (NDModificationOperators)

- (instancetype)nd_modify:(void(NS_NOESCAPE ^)(id))modify {
  if (modify) {
    modify(self);
  }

  return self;
}

- (void)nd_done:(void(NS_NOESCAPE ^)(id))done {
  if (done) {
    done(self);
  }
}

@end
