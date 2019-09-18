//
//  LandModel.m
//  MVC-land
//
//  Created by 鳞潜羽翔 on 2019/9/18.
//  Copyright © 2019 鳞潜羽翔. All rights reserved.
//

#import "LandModel.h"

@implementation LandModel
-(void)checkNames:(NSString *)username withPassword:(NSString *)password {
    if ([username isEqualToString:@"123"] && [password isEqualToString:@"789"]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"landSuccessful" object:self];
    } else {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"landFail" object:self];
    }
}
@end
