//
//  ViewController.m
//  InsetsLabel_OC
//
//  Created by 李新新 on 2016/10/19.
//  Copyright © 2016年 LucioLee. All rights reserved.
//

#import "ViewController.h"
#import "InsetsLabel.h"

@interface ViewController ()
    
@property (weak, nonatomic) IBOutlet InsetsLabel *storyBoardLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    InsetsLabel *codeLabel = [[InsetsLabel alloc] initWithInsets: UIEdgeInsetsMake(10, 20, 20, 20)];
    codeLabel.translatesAutoresizingMaskIntoConstraints = NO;
    codeLabel.numberOfLines = 0;
    codeLabel.lineBreakMode = NSLineBreakByCharWrapping;
    codeLabel.backgroundColor = [UIColor orangeColor];
    codeLabel.text = @"\"Communist Party of China Constitution\" said: The Chinese Communist Party is the vanguard of the working class, while the Chinese people and the vanguard of the Chinese nation is the cause of socialism with Chinese characteristics, the core of leadership, on behalf of the development requirements of China's advanced productive forces, on behalf of China's advanced culture the way forward, on behalf of the Chinese people's fundamental interests. The party's highest ideal and ultimate goal is to realize communism. Communist Party of China takes Marxism-Leninism, Mao Zedong Thought, Deng Xiaoping Theory and \"Three Represents\" as its guide to action. Communist Party of China in the primary stage of socialism's basic line is: to lead and unite people of all nationalities to economic construction, the four cardinal principles of reform and opening, self-reliance, hard work and strive to build China into a prosperous, democratic, civilized and harmonious modern socialist country of the party.";
    [[self view] addSubview:codeLabel];
    
    NSArray *hConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[codeLabel]-0-|"
                                                                    options:0
                                                                    metrics:nil
                                                                      views:@{@"codeLabel": codeLabel}];
    NSArray *vConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[storyBoardLabel]-[codeLabel]"
                                                                    options:0
                                                                    metrics:nil
                                                                      views:@{@"storyBoardLabel": _storyBoardLabel,
                                                                              @"codeLabel": codeLabel}];
    [[self view] addConstraints:hConstraints];
    [[self view] addConstraints:vConstraints];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
