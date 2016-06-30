//
//  PrimeTableViewController.h
//  PrimeTime
//
//  Created by Max Tkach on 6/29/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISPrimeTimeTableViewController : UITableViewController

@property (strong, nonatomic) NSMutableArray *primesArray;

- (NSUInteger)primeNumber:(NSInteger)prime;

@end
