//
//  ViewController.m
//  pageViewTest1
//
//  Created by 李育豪 on 2015/3/31.
//  Copyright (c) 2015年 ALPHACamp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    array = [[NSMutableArray alloc] initWithObjects:@"豆花妹1", @"豆花妹2", @"豆花妹3",  nil];
    self.pageCtrl.numberOfPages = [array count];
    
    [self showImg];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void) showImg
{
    NSString *filename = [array objectAtIndex:self.pageCtrl.currentPage];
    self.oreoIMg.image = [UIImage imageNamed:filename];
}

- (IBAction) handleSwipe : (UISwipeGestureRecognizer *)sender
{
    switch (sender.direction) {
        case UISwipeGestureRecognizerDirectionLeft:
            if (self.pageCtrl.currentPage<[array count]) {
                self.pageCtrl.currentPage++;
                [self showImg];
            }
            break;
            
        case UISwipeGestureRecognizerDirectionRight:
            if (self.pageCtrl.currentPage>0) {
                self.pageCtrl.currentPage--;
                [self showImg];
            }
            break;
        default:;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
