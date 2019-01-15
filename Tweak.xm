#import <Preferences/PSTableCell.h>

@interface PSUIAppleAccountCell : PSTableCell
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

// @interface PSViewController : UIViewController
// @end
// @interface PSListController : PSViewController
// @end
// @interface PSUIPrefsListController : PSListController
// @end

// @interface UITableView : UIScrollView
// @property (nonatomic, assign, readwrite) CGRect frame;
// @end

%hook PSUIAppleAccountCell

-(void)layoutSubviews {
    self.hidden = YES;
}

%end


// %hook UITableView

// -(void)setFrame:(CGRect)arg1 {
//     %orig();
//     static CGRect twFrame = arg1;
//     twFrame = CGRectMake(0, -100, twFrame.size.width, twFrame.size.height);
//     NSLog(@"NoiCloudInSettings LOG: self.subviews: %@", self.subviews);
//     self.subviews[0].frame = twFrame;
//
// }

// -(id)initWithFrame:(CGRect)arg1 { // PSListContainerView
//
//     if ([self.superview isKindOfClass:[PSUIPrefsListController class]]) {
//         static CGRect twFrame = arg1;
//         twFrame = CGRectMake(0, -100, twFrame.size.width, twFrame.size.height);
//         return %orig(twFrame);
//     } else {
//         return %orig();
//     }
// }

// %end
