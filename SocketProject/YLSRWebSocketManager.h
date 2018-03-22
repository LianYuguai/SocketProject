//
//  YLSRWebSocketManager.h
//  SocketProject
//
//  Created by yulong on 2018/3/21.
//  Copyright © 2018年 yulong. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum : NSUInteger {
    disConnectByUser ,
    disConnectByServer,
} DisConnectType;
@interface YLSRWebSocketManager : NSObject
+ (instancetype)share;

- (void)connect;
- (void)disConnect;

- (void)sendMsg:(NSString *)msg;

- (void)ping;
@end
