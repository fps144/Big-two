//
//  PokerCard.h
//  Poker
//
//  Created by SongYu on 10/27/16.
//  Copyright © 2016 SongYu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PokerCard : NSObject

@property (nonatomic, copy)NSMutableArray *allCards;

- (NSArray *)getPokerCard;

@end
