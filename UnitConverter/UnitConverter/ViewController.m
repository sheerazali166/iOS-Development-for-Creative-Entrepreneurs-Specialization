//
//  ViewController.m
//  UnitConverter
//
//  Created by Sheeraz on 01/05/2024.
//

#import "ViewController.h"

double convertUnitOneToUnitTwo(double unitOneValue) {
    
    double unitTwoValue;
    
    unitTwoValue = unitOneValue * 10 + 2;

    return unitTwoValue;
    
}

double convertUnitTwoToUnitThree(double unitTwoValue) {
    
    double unitThreeValue;
    
    unitThreeValue = unitTwoValue * 20 + 4;

    return unitThreeValue;
    
}

double convertUnitThreeToUnitFour(double unitThreeValue) {
    
    double unitFourValue;
    
    unitFourValue = unitThreeValue * 40 + 6;

    return unitFourValue;
    
}

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;
@property (weak, nonatomic) IBOutlet UILabel *outputField;

@end

@implementation ViewController

- (IBAction)updateButton:(id)sender {

    NSMutableString *buf = [NSMutableString new];
    
    double userInput = [self.inputField.text floatValue];
    
    if (self.segmentController.selectedSegmentIndex == 0) {
        
    
        double unitTwoValue = convertUnitOneToUnitTwo(userInput);
        
        [buf appendString:[@(unitTwoValue) stringValue]];
        
    } else if (self.segmentController.selectedSegmentIndex == 1) {

        double unitThreeValue = convertUnitTwoToUnitThree(userInput);
        
        [buf appendString:[@(unitThreeValue) stringValue]];
        
//        [buf appendString:@"unit three"];
        
    } else {
        
        double unitFourValue = convertUnitThreeToUnitFour(userInput);
        
        [buf appendString:[@(unitFourValue) stringValue]];
        
        //        [buf appendString:@"unit four"];
        
    }
    
    
    self.outputField.text = buf;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
