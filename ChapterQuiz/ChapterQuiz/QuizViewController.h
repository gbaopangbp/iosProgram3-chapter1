//
//  QuizViewController.h
//  ChapterQuiz
//
//  Created by tirostiros on 14-12-24.
//  Copyright (c) 2014年 cn.com.tiros. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
- (IBAction)changeButton:(id)sender;
- (IBAction)answerLabel:(id)sender;

@end
