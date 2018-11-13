//
//  main.m
//  Poker
//
//  Created by SongYu on 10/27/16.
//  Copyright © 2016 SongYu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Dealer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dealer *dealer  = [[Dealer alloc]init];   //荷官
        Player *playerA = [[Player alloc]init];   //玩家A
        Player *playerB = [[Player alloc]init];   //玩家B
        Player *playerC = [[Player alloc]init];   //玩家C
        Player *playerD = [[Player alloc]init];   //玩家D
        
        playerA.selfCards = [dealer sendPokerCardToA];
        playerB.selfCards = [dealer sendPokerCardToB];
        playerC.selfCards = [dealer sendPokerCardToC];
        playerD.selfCards = [dealer sendPokerCardToD];
        
        switch (1) {
            case 1:
                printf("A的牌：\n");
                for (int i = 0;i < 13; i ++) {
                    printf("%s ",[playerA.selfCards[i] UTF8String]);
                }
            case 2:
                printf("\nB的牌：\n");
                for (int i = 0;i < 13; i ++) {
                    printf("%s ",[playerB.selfCards[i] UTF8String]);
                }
            case 3:
                printf("\nC的牌：\n");
                for (int i = 0;i < 13; i ++) {
                    printf("%s ",[playerC.selfCards[i] UTF8String]);
                }
            case 4:
                printf("\nD的牌：\n");
                for (int i = 0;i < 13; i ++) {
                    printf("%s ",[playerD.selfCards[i] UTF8String]);
                }
                printf("\n");
            default:
                break;
        }
        
    }
    return 0;
}
