//
//  NSObject+NDModifyOperator.mm
//  NDModifyOperator
//
//  Created by Nguyen Duc Hiep on 2/4/20.
//  Copyright © 2020 Nguyen Duc Hiep. All rights reserved.
//

#import "NDModifyOperator/NSObject+NDModifyOperator.h"

@implementation NSObject (NDModifyOperator)

- (instancetype)nd_modify:(void (^)(id))modify {
  if (modify) {
    modify(self);
  }

  return self;
}

- (void)nd_done:(void (^)(id))done {
  if (done) {
    done(self);
  }
}

@end
