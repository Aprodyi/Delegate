//
//  Grandson.m
//  BorshDelegate
//
//  Created by Ilya Lunkin on 28/02/2019.
//  Copyright © 2019 Sberbank. All rights reserved.
//

#import "Grandson.h"

@implementation Grandson

- (BOOL)borshServed
{
	// принять решение есть ли борщ (проверяем, что текущее время от 14:00 до 16:00)
    NSDate *date = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"HH"];
    NSUInteger localTime = [[dateFormatter stringFromDate:date] integerValue];
    
    if (localTime >= 14 && localTime < 16){
        NSLog(@"Едим борщ"); // Едим борщ при соблюдении условия
    } else {
        NSLog(@"Сейчас не время для обеда");
    }
	// сообщаем нужно ли мыть посуду, если борщ был съеден
    return (localTime >= 14 && localTime < 16) ? YES : NO;
}

@end
