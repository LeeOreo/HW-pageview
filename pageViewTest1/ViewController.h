//
//  ViewController.h
//  pageViewTest1
//
//  Created by 李育豪 on 2015/3/31.
//  Copyright (c) 2015年 ALPHACamp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSMutableArray *array;
}

@property (weak, nonatomic) IBOutlet UIImageView *oreoIMg;
@property (weak, nonatomic) IBOutlet UIPageControl *pageCtrl;

- (void) showImg;

@end

