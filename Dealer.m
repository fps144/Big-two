//
//  Dealer.m
//  Poker
//
//  Created by SongYu on 10/27/16.
//  Copyright © 2016 SongYu. All rights reserved.
//

#import "Dealer.h"
#import "PokerCard.h"

@implementation Dealer {
    NSMutableArray *ACards;
    NSMutableArray *BCards;
    NSMutableArray *CCards;
    NSMutableArray *DCards;
    NSMutableArray *AllRandomCards;
}

#pragma mark 洗牌
- (void)washPokerCards {
    //荷官得到一副新牌，开始洗牌
    PokerCard *pokerCards = [[PokerCard alloc]init];
    NSMutableArray *array = [NSMutableArray arrayWithArray:[pokerCards getPokerCard]];
    AllRandomCards = [[NSMutableArray alloc]init];
    unsigned int r=arc4random();
    for (int j=0; j<52; j++) {
        [AllRandomCards addObject:[array objectAtIndex:r%(52-j)]];
        [array removeObjectAtIndex:r%(52-j)];
    }

}

#pragma mark 给A发牌
- (NSArray *)sendPokerCardToA {
    [self washPokerCards];
    ACards = [[NSMutableArray alloc]init];
    int temp = 0;
    for (int i = 0; i < 13; i ++) {
        ACards[i] = AllRandomCards[temp];
        temp = temp + 4;
    }
    return ACards;
}

#pragma mark 给B发牌
- (NSArray *)sendPokerCardToB {

    BCards = [[NSMutableArray alloc]init];
    int temp = 1;
    for (int i = 0; i < 13; i ++) {
        BCards[i] = AllRandomCards[temp];
        temp = temp + 4;
    }
    return BCards;
}

#pragma mark 给C发牌
- (NSArray *)sendPokerCardToC {

    CCards = [[NSMutableArray alloc]init];
    int temp = 2;
    for (int i = 0; i < 13; i ++) {
        CCards[i] = AllRandomCards[temp];
        temp = temp + 4;
    }
    return CCards;
}

#pragma mark 给D发牌
- (NSArray *)sendPokerCardToD {

    DCards = [[NSMutableArray alloc]init];
    int temp = 3;
    for (int i = 0; i < 13; i ++) {
        DCards[i] = AllRandomCards[temp];
        temp = temp + 4;
    }
    return DCards;
}
@end
