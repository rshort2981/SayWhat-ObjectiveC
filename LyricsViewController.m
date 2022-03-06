//
//  LyricsViewController.m
//  SayWhat?
//
//  Created by Robert Short on 1/13/22.
//

#import "LyricsViewController.h"
#import "ViewController.h"

@interface LyricsViewController ()

@end

@implementation LyricsViewController

@synthesize lyrics, lyricsStr, introStr;

- (void)viewDidLoad {
    
    lyrics.text = [NSString stringWithFormat:@"%@ \n\n %@", introStr, lyricsStr];
    [super viewDidLoad];

}



@end
