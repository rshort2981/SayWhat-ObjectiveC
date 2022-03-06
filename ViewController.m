//
//  ViewController.m
//  SayWhat?
//
//  Created by Robert Short on 1/11/22.
//

#import "ViewController.h"
#import "LyricsViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize artistTextField, songTextField;

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)getLyrics:(id)sender {
    
    searchText = [NSString stringWithFormat:@"https://api.lyrics.ovh/v1/%@/%@", [artistTextField.text stringByReplacingOccurrencesOfString:@" " withString:@"+"], [songTextField.text stringByReplacingOccurrencesOfString:@" " withString:@"+"]];
    url = [[NSURL alloc] initWithString:searchText];
    data = [[NSData alloc] initWithContentsOfURL:url];
    
    NSError *error;
    
    if (data) {
        jsonArray = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
        
        rawLyrics = [NSMutableString stringWithFormat:@"%@", jsonArray];
        cleanedLyrics = [rawLyrics stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"];
        cleanedLyrics1 = [cleanedLyrics stringByReplacingOccurrencesOfString:@"lyrics =" withString:@""];
        cleanedLyrics2 = [cleanedLyrics1 stringByReplacingOccurrencesOfString:@"{" withString:@""];
        cleanedLyrics3 = [cleanedLyrics2 stringByReplacingOccurrencesOfString:@"}" withString:@""];
        cleanedLyrics4 = [cleanedLyrics3 stringByReplacingOccurrencesOfString:@";" withString:@""];
        cleanedLyrics5 = [cleanedLyrics4 stringByReplacingOccurrencesOfString:@"  " withString:@""];
        cleanedLyrics6 = [cleanedLyrics5 stringByReplacingOccurrencesOfString:@"\"" withString:@""];
        cleanedLyrics7 = [cleanedLyrics6 stringByReplacingOccurrencesOfString:@"\r\n" withString:@"\n\n"];
        
        intro = [NSString stringWithFormat:@"%@ by %@", songTextField.text.capitalizedString, artistTextField.text.capitalizedString];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    LyricsViewController *lvc;
    lvc = [segue destinationViewController];
    lvc.introStr = intro;
    lvc.lyricsStr = cleanedLyrics7;
}


@end
