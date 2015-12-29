//
//  ViewController.m
//  Quiz
//
//  Created by XuJian on 12/18/15.
//  Copyright (c) 2015 XuJian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@property (nonatomic) NSArray *questions;
@property (nonatomic) NSArray *answers;
@property (nonatomic) int currentQuestionIndex;

@end

@implementation ViewController

- (IBAction)showQuestion:(id)sender {
    self.currentQuestionIndex++;
    if (self.currentQuestionIndex == self.questions.count){
        self.currentQuestionIndex = 0;
    }


    NSString *question = self.questions[self.currentQuestionIndex];
    self.questionLabel.text = question;
    self.answerLabel.text = @"???";
}

- (IBAction)showAnswer:(id)sender{
    NSString *answer = self.answers[self.currentQuestionIndex];
    self.answerLabel.text = answer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.questions = @[ @"From what is cognac made?",
                        @"What is 7+7?",
                        @"What is the capital of Vermont?"];
    
    self.answers = @[ @"Grapes",
                      @"14",
                      @"Montpelier"];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
