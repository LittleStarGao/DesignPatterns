//
//  main.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/8/10.
//  Copyright © 2017年 mali. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NuWa.h"
#import "Door.h"
#import "DoorInstaller.h"
#import "WoodDoorFactory.h"
#import "IronDoorFactory.h"
#import "Seller.h"
#import "FiveYuanNoSpicyBuild.h"
#import "TenYuanAbnormalSpicyBuild.h"
#import "Employee.h"
#import "Company.h"
#import "EmployeeDeepCopy.h"
#import "EmployeeShallowCopy.h"

void factoryMethod() {
    [NuWa someMagic];
}

void abstractFactory() {
    Door *woodDoor = [WoodDoorFactory createDoor];
    DoorInstaller *woodDoorInstaller = [WoodDoorFactory createDoorInstall];
    [woodDoor getDescription];
    [woodDoorInstaller getDescription];
    
    Door *ironDoor = [IronDoorFactory createDoor];
    DoorInstaller *ironDoorInstaller = [IronDoorFactory createDoorInstall];
    [ironDoor getDescription];
    [ironDoorInstaller getDescription];
}

void builder() {
    FiveYuanNoSpicyBuild *fiveBuilder = [[FiveYuanNoSpicyBuild alloc] init];
    TenYuanAbnormalSpicyBuild *tenBuilder = [[TenYuanAbnormalSpicyBuild alloc] init];
    Seller *aSeller = [[Seller alloc] init];
    aSeller.handWheatCakeBuilder = fiveBuilder;
    [aSeller cookFood];
    aSeller.handWheatCakeBuilder = tenBuilder;
    [aSeller cookFood];
}

void prototype() {
    Company *sina = [[Company alloc] initWithName:@"新浪" establishmentTime:@"2014-08-08" level:@"上市"];
    Company *alibaba = [[Company alloc] initWithName:@"阿里巴巴" establishmentTime:@"2008-08-08" level:@"上市"];
    EmployeeShallowCopy *zhangSan = [[EmployeeShallowCopy alloc] initWithName:@"张三" configWithAge:20 department:@"IT" company:sina];
    EmployeeDeepCopy *zhangsanDeep = [[EmployeeDeepCopy alloc] initWithName:@"张三deep" configWithAge:20 department:@"IT" company:alibaba];
    EmployeeShallowCopy *liSi = [zhangSan copy];
    sina.name = @"浪里个浪";
    NSLog(@"%@", liSi.company.name);
    EmployeeDeepCopy *wangWu = [zhangsanDeep copy];
    alibaba.name = @"新阿里巴巴";
    NSLog(@"%@", wangWu.company.name);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        factoryMethod();
//        abstractFactory();
//        builder();
//        prototype();
        
    }
    return 0;
}


