//
//  ViewController.h
//  SayWhat?
//
//  Created by Robert Short on 1/11/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSString *searchText;
    NSURL *url;
    NSData *data;

    NSError *error;
    NSArray *jsonArray;

    NSString *rawLyrics;
    NSString *cleanedLyrics;
    NSString *cleanedLyrics1;
    NSString *cleanedLyrics2;
    NSString *cleanedLyrics3;
    NSString *cleanedLyrics4;
    NSString *cleanedLyrics5;
    NSString *cleanedLyrics6;
    NSString *cleanedLyrics7;
    
    NSString *intro;
}

@property (weak, nonatomic) IBOutlet UITextField *artistTextField;
@property (weak, nonatomic) IBOutlet UITextField *songTextField;


@end

