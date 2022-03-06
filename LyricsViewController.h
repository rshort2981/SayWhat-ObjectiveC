//
//  LyricsViewController.h
//  SayWhat?
//
//  Created by Robert Short on 1/13/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LyricsViewController : UIViewController
@property (weak, nonatomic) NSString *lyricsStr;
@property (weak, nonatomic) NSString *introStr;
@property (weak, nonatomic) IBOutlet UITextView *lyrics;

@end

NS_ASSUME_NONNULL_END
