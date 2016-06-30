//
//  PrimeTableViewController.m
//  PrimeTime
//
//  Created by Max Tkach on 6/29/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISPrimeTimeTableViewController.h"

@interface FISPrimeTimeTableViewController ()

@end

@implementation FISPrimeTimeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.accessibilityIdentifier = @"table";
    
//    NSUInteger number = 5;
//    self.primesArray = [@[@2, @3] mutableCopy];
//    while (self.primesArray.count < 100) {
//        if ([self isPrime:number]) {
//            [self.primesArray addObject:@(number)];
//        }
//        number ++;
//    }
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    return self.primesArray.count;
    return 100;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
//    cell.textLabel.text = [NSString stringWithFormat:@"%@", self.primesArray[indexPath.row]];
    NSUInteger nthPrime = [self primeNumber:(indexPath.row + 5001)];
    cell.textLabel.text = [NSString stringWithFormat:@"%lu", nthPrime];

    return cell;
}


- (BOOL)isPrime:(NSUInteger)number {
    if (number < 2) {
        return false;
    }
    if (number < 4) {
        return true;
    }
    if (number % 2 == 0 || number % 3 == 0) {
        return false;
    }
    
    NSUInteger divider = 5;
    while (divider * divider <= number) {
        if (number % divider == 0 || number % (divider + 2) == 0) {
            return false;
        }
        divider += 6;
    }
    return true;
}


- (NSUInteger)primeNumber:(NSInteger)prime {
    NSUInteger counter = 0;
    NSUInteger currentNumber = 1;
    while (counter < prime) {
        if ([self isPrime:currentNumber]) {
            counter ++;
        }
        currentNumber++;
    }
    return currentNumber - 1;
}


@end
