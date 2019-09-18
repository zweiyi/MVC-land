//
//  ViewController.h
//  MVC-land
//
//  Created by 鳞潜羽翔 on 2019/9/18.
//  Copyright © 2019 鳞潜羽翔. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LandModel.h"
#import "LandView.h"

@interface ViewController : UIViewController <PassButtonDelegate>
@property (nonatomic, strong) LandView *landView;
@property (nonatomic, strong) LandModel *mModel;

@end

