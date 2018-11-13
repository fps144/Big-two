//
//  PokerCard.m
//  Poker
//
//  Created by SongYu on 10/27/16.
//  Copyright © 2016 SongYu. All rights reserved.
//

#import "PokerCard.h"

@implementation PokerCard
{
    NSMutableArray *spade;   //黑桃
    NSMutableArray *heart;   //红桃
    NSMutableArray *club;    //梅花
    NSMutableArray *diamond; //方片
    
}

#pragma mark 得到一副初始牌(顺序牌)
- (NSArray *)getPokerCard {
    spade     = [[NSMutableArray alloc]init];
    heart     = [[NSMutableArray alloc]init];
    club      = [[NSMutableArray alloc]init];
    diamond   = [[NSMutableArray alloc]init];
    _allCards = [[NSMutableArray alloc]init];
    
    for (int i = 0; i < 13; i++) {
        if(i < 10){
        [spade addObject:[NSString stringWithFormat:@"黑桃%d",i+1]];
        [heart addObject:[NSString stringWithFormat:@"红桃%d",i+1]];
        [club addObject:[NSString stringWithFormat:@"梅花%d",i+1]];
        [diamond addObject:[NSString stringWithFormat:@"方片%d",i+1]];
        }
        else if (i == 10) {
            [spade addObject:[NSString stringWithFormat:@"黑桃J"]];
            [heart addObject:[NSString stringWithFormat:@"红桃J"]];
            [club addObject:[NSString stringWithFormat:@"梅花J"]];
            [diamond addObject:[NSString stringWithFormat:@"方片J"]];
            
        }
        else if (i == 11) {
            [spade addObject:[NSString stringWithFormat:@"黑桃Q"]];
            [heart addObject:[NSString stringWithFormat:@"红桃Q"]];
            [club addObject:[NSString stringWithFormat:@"梅花Q"]];
            [diamond addObject:[NSString stringWithFormat:@"方片Q"]];
        }
        else if (i == 12) {
            [spade addObject:[NSString stringWithFormat:@"黑桃K"]];
            [heart addObject:[NSString stringWithFormat:@"红桃K"]];
            [club addObject:[NSString stringWithFormat:@"梅花K"]];
            [diamond addObject:[NSString stringWithFormat:@"方片K"]];
        }
    }
    
    //合并数组(四合一)
    switch (0) {
        case 0:
            for (int i = 0; i < 13; i ++) {
                _allCards[i] = [NSString stringWithFormat:@"%@", spade[i]];
            }
        case 1:
            for (int i = 0; i < 13; i++) {
                _allCards[i+13] = [NSString stringWithFormat:@"%@", heart[i]];
            }
        case 2:
            for (int i = 0; i < 13; i ++) {
                _allCards[i+26] = [NSString stringWithFormat:@"%@", club[i]];                }
        case 3:
            for (int i = 0; i < 13; i ++) {
                _allCards[i+39] = [NSString stringWithFormat:@"%@", diamond[i]];
            }
            break;
        default:
            break;
    }
    return _allCards;
}


@end
