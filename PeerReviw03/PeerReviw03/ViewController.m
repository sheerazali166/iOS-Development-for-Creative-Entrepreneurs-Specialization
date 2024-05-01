//
//  ViewController.m
//  PeerReviw03
//
//  Created by Sheeraz on 01/05/2024.
//

#import "ViewController.h"
#import "CurrencyRequest/CRCurrencyRequest.h"
#import "CurrencyRequest/CRCurrencyResults.h"


@interface ViewController () <CRCurrencyRequestDelegate>
@property (nonatomic) CRCurrencyRequest *req;
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UIButton *convertButton;
@property (weak, nonatomic) IBOutlet UILabel *currencyA;
@property (weak, nonatomic) IBOutlet UILabel *currencyB;
@property (weak, nonatomic) IBOutlet UILabel *currencyC;

@end

@implementation ViewController

- (IBAction)buttonTapped:(id)sender {
    
    self.convertButton.enabled = NO;
    
    self.req = [[CRCurrencyRequest alloc] init];
    self.req.delegate = self;
    self.req.start;
   
}

- (void)currencyRequest:(CRCurrencyRequest *)req
    retrievedCurrencies:(CRCurrencyResults *)currencies {
    
    self.convertButton.enabled = YES;
    
    double inputValue = [self.inputField.text floatValue];
    double euroValue = inputValue * currencies.EUR;
    
    NSString *tempEuro = [NSString stringWithFormat:@"%.2f", euroValue];
    
    double yenValue = inputValue * currencies.JPY;
    
    NSString *tempYen = [NSString stringWithFormat:@"%.2f", yenValue];
    
    double gbpValue = inputValue * currencies.GBP;
    
    NSString *tempGBP = [NSString stringWithFormat:@"%.2f", gbpValue];
    
    
    self.currencyA.text = tempEuro;
    self.currencyB.text = tempYen;
    self.currencyC.text = tempGBP;
}


@end
