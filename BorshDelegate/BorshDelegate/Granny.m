//
//  Granny.m
//  BorshDelegate
//
//  Created by Ilya Lunkin on 28/02/2019.
//  Copyright © 2019 Sberbank. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Granny.h"


@implementation Granny

- (void)serveLunch
{
	// приготовить обед
    NSLog(@"Готовим обед");
    
	// переложить работу по употреблению обеда делегату
    NSLog(@"Предлагаем обед делегату, т.е. внуку");
	
    if ([self.borshDelegate respondsToSelector:@selector(borshServed)]){
        if ([self.borshDelegate borshServed]){// проверяем решение делегата, т.е. внука
            [self washDishes];// исходя из решения вызывает или не вызывает метод для мытья посуды
        }
    }
}

- (void)washDishes
{
    NSLog(@"Моем посуду");
}

@end
