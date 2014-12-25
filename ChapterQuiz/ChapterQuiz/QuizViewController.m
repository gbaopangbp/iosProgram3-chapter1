//
//  QuizViewController.m
//  ChapterQuiz
//
//  Created by tirostiros on 14-12-24.
//  Copyright (c) 2014年 cn.com.tiros. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()
@property(nonatomic,strong)NSMutableArray *questions;
@property(nonatomic,strong)NSMutableArray *answers;
@property(nonatomic)int index;

@end

@implementation QuizViewController

#define DEFAULT_ANSWER @"???"

-(NSMutableArray*)questions
{
    if (nil == _questions)
    {
        _questions = [[NSMutableArray alloc] init];
        [_questions addObject:@"1+1=?"];
        [_questions addObject:@"英国的首都是哪里？"];
        [_questions addObject:@"地球又几个？"];
    }
    return _questions;
}

-(NSMutableArray*)answers
{
    if (nil == _answers)
    {
        _answers = [[NSMutableArray alloc] init];
        [_answers addObject:@"2"];
        [_answers addObject:@"伦敦"];
        [_answers addObject:@"只有一个"];
    }
    return _answers;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    [self.questionLabel setText:[self.questions objectAtIndex:0]];
    [self.answerLabel setText:DEFAULT_ANSWER];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeButton:(id)sender
{
    self.index++;
    self.index = self.index%[self.questions count];
    [self.questionLabel setText:[self.questions objectAtIndex:self.index]];
    [self.answerLabel setText:DEFAULT_ANSWER];
}

- (IBAction)answerLabel:(id)sender
{
    [self.answerLabel setText:[self.answers objectAtIndex:self.index]];
}
@end
