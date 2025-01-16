//
//  shuwen_video_iosUITestsLaunchTests.m
//  shuwen-video-iosUITests
//
//  Created by shuwen on 2025/1/16.
//

#import <XCTest/XCTest.h>

@interface shuwen_video_iosUITestsLaunchTests : XCTestCase

@end

@implementation shuwen_video_iosUITestsLaunchTests

+ (BOOL)runsForEachTargetApplicationUIConfiguration {
    return YES;
}

- (void)setUp {
    self.continueAfterFailure = NO;
}

- (void)testLaunch {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];

    // Insert steps here to perform after app launch but before taking a screenshot,
    // such as logging into a test account or navigating somewhere in the app

    XCTAttachment *attachment = [XCTAttachment attachmentWithScreenshot:XCUIScreen.mainScreen.screenshot];
    attachment.name = @"Launch Screen";
    attachment.lifetime = XCTAttachmentLifetimeKeepAlways;
    [self addAttachment:attachment];
}

@end
