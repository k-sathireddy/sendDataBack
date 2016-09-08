//
//  ViewController.m
//  passDataBackSample


#import "ViewController.h"
#import "ColorsTableViewController.h"

@interface ViewController () <ColorsDelegate>
@property (weak, nonatomic) IBOutlet UILabel *textDataLabel;
- (IBAction)goButtonTapped:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)sendColor:(NSString *)colorName{
    self.textDataLabel.text = colorName;
}

- (IBAction)goButtonTapped:(id)sender {
    
    ColorsTableViewController *colorsTableViewController=(ColorsTableViewController *)[self.storyboard instantiateViewControllerWithIdentifier:@"colorTableIdentifier"];
    colorsTableViewController.delegate = self;
    [self.navigationController pushViewController:colorsTableViewController animated:YES];
}
@end
