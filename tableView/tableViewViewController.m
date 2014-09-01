//
//  tableViewViewController.m
//  tableView
//
//  Created by sixcroresapp on 5/30/14.
//  Copyright (c) 2014 NTL. All rights reserved.


#import "tableViewViewController.h"
#define TEXT_FIELD_TAG 1000

@interface tableViewViewController ()

@end

@implementation tableViewViewController
@synthesize pArrSelectedSeats;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        // Custom initialization
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
    

}

- (id)initWithCoder:(NSCoder *)coder {
    
    if (self = [super initWithCoder:coder]) {
        /* do initialization here */
        
    }
    return self;
}


- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    textFieldValuesArray = [[NSMutableArray alloc]init];
    
    
    /*for(int i=0; i< 25; i++){
        [textFieldValuesArray addObject:@""];
    }*/
    
    slidervalue_array = [[NSMutableArray alloc]init];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];
    [slidervalue_array addObject:@""];

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
 {
   return  20;
 }

 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
     
     @try {
 
 
         static NSString *CellIdentifier = @"Cell";
     
         UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
         if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    
        }
         
         slider_textfield = [[UITextField alloc] init];
         slider_textfield.frame = CGRectMake(100, 10, 100, 30);
         slider_textfield.delegate = self;
         slider_textfield.tag=indexPath.row;
         [slider_textfield setTextAlignment:NSTextAlignmentCenter];
         [slider_textfield setFont:[UIFont boldSystemFontOfSize:12]];
         slider_textfield.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
         [slider_textfield setBackgroundColor:[UIColor redColor]];
         slider_textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
         [slider_textfield addTarget:self action:@selector(tctFieldChange:) forControlEvents:UIControlEventEditingChanged];
         slider_textfield.text=[NSString stringWithFormat:@"%@",[slidervalue_array objectAtIndex:indexPath.row]];
         [cell.contentView addSubview:slider_textfield];
         
         [cell setSelectionStyle:UITableViewCellSelectionStyleNone];

         
       /*  slider_textfield = [[UITextField alloc] initWithFrame:CGRectMake(77, 75.0, 90.0, 25.0)];
         UIView *paddingViewSelectPeriod = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, 20)];
         slider_textfield.leftView = paddingViewSelectPeriod;
         slider_textfield.leftViewMode = UITextFieldViewModeAlways;
         slider_textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
         slider_textfield.placeholder = @"Select period";
         slider_textfield.layer.cornerRadius = 4.0f;
         CAShapeLayer* shadowLayer4 = [CAShapeLayer layer];
         [shadowLayer4 setFrame:slider_textfield.bounds];
         slider_textfield.layer.borderWidth = 1;
         slider_textfield.layer.borderColor = [[UIColor alloc] initWithRed:0.0 / 255 green:0.0 / 255 blue:0.0 / 255 alpha:0.1].CGColor;
         slider_textfield.font = [UIFont fontWithName:@"Roboto-Light" size:12];
         // Standard shadow stuff
         [shadowLayer4 setShadowColor:[[UIColor colorWithWhite:0 alpha:1] CGColor]];
         [shadowLayer4 setShadowOffset:CGSizeMake(-1.0f, -2.0f)];
         [shadowLayer4 setShadowOpacity:0.1f];
         [shadowLayer4 setShadowRadius:1.0f];
         
         // Causes the inner region in this example to NOT be filled.
         [shadowLayer4 setFillRule:kCAFillRuleEvenOdd];
         
         // Create the larger rectangle path.
         CGMutablePathRef path4 = CGPathCreateMutable();
         CGPathAddRect(path4, NULL, CGRectInset(slider_textfield.bounds, -42, -42));
         
         CGPathRef someInnerPath4 = [UIBezierPath bezierPathWithRoundedRect:slider_textfield.bounds cornerRadius:4.0f].CGPath;
         CGPathAddPath(path4, NULL, someInnerPath4);
         CGPathCloseSubpath(path4);
         
         [shadowLayer4 setPath:path4];
         CGPathRelease(path4);
         [[slider_textfield layer] addSublayer:shadowLayer4];
         CAShapeLayer* maskLayer4 = [CAShapeLayer layer];
         [maskLayer4 setPath:someInnerPath4];
         [shadowLayer4 setMask:maskLayer4];
         
         [slider_textfield setTag:indexPath.row + 5001];
         slider_textfield.delegate = self;
         [cell addSubview:slider_textfield];*/

         return cell;
 
     } @catch (NSException *exception) {
 
         NSLog(@"Exception Error %@",exception);
    
     } @finally {
 
     }
 }

/*- (void)textFieldDidEndEditing:(UITextField *)textField {
    
    NSLog(@"dd %ld",(long)textField.tag);
    
    NSMutableDictionary *newDict = [[NSMutableDictionary alloc] init];
    
    if ((textField.tag > 2500) && (textField.tag < 3000)){
        NSDictionary *oldDict = (NSDictionary *)[slidervalue_array objectAtIndex:(textField.tag - 2501)];
        [newDict addEntriesFromDictionary:oldDict];
        [newDict setObject:textField.text forKey:@"a"];
        [slidervalue_array replaceObjectAtIndex:(textField.tag - 2501) withObject:newDict];
        
    } else if ((textField.tag > 500) && (textField.tag < 1000)){
        
        NSDictionary *oldDict = (NSDictionary *)[slidervalue_array objectAtIndex:(textField.tag - 501)];
        [newDict addEntriesFromDictionary:oldDict];
        [newDict setObject:textField.text forKey:@"a"];
        [slidervalue_array replaceObjectAtIndex:(textField.tag - 501) withObject:newDict];
    }
    else if ((textField.tag > 1500) && (textField.tag < 2000)){
        NSDictionary *oldDict = (NSDictionary *)[slidervalue_array objectAtIndex:(textField.tag - 1501)];
        [newDict addEntriesFromDictionary:oldDict];
        [newDict setObject:textField.text forKey:@"a"];
        [slidervalue_array replaceObjectAtIndex:(textField.tag - 1501) withObject:newDict];
    }
    
}*/


-(void)viewDidAppear:(BOOL)animated
{
    // Register notification when the keyboard will be show
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillShow:)
                                                 name:UIKeyboardWillShowNotification
                                               object:nil];
    
    // Register notification when the keyboard will be hide
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillHide:)
                                                 name:UIKeyboardWillHideNotification
                                               object:nil];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

-(void)viewDidDisappear:(BOOL)animated
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

-(void) keyboardWillShow:(NSNotification *)note
{
    // Get the keyboard size
    CGRect keyboardBounds;
    [[note.userInfo valueForKey:UIKeyboardFrameBeginUserInfoKey] getValue: &keyboardBounds];
    
    // Detect orientation
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    CGRect frame = pTblContactDetails.frame;
    
    // Start animation
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration:0.3f];
    
    // Reduce size of the Table view
    if (orientation == UIInterfaceOrientationPortrait || orientation == UIInterfaceOrientationPortraitUpsideDown)
        frame.size.height -= keyboardBounds.size.height;
    else
        frame.size.height -= keyboardBounds.size.width;
    
    // Apply new size of table view
    pTblContactDetails.frame = frame;
    
    // Scroll the table view to see the TextField just above the keyboard
    if (slider_textfield)
    {
        CGRect textFieldRect = [pTblContactDetails convertRect:slider_textfield.bounds fromView:slider_textfield];
        [pTblContactDetails scrollRectToVisible:textFieldRect animated:NO];
    }
    
    [UIView commitAnimations];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    slider_textfield = nil;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    slider_textfield = textField;
}

-(void) keyboardWillHide:(NSNotification *)note
{
    // Get the keyboard size
    CGRect keyboardBounds;
    [[note.userInfo valueForKey:UIKeyboardFrameBeginUserInfoKey] getValue: &keyboardBounds];
    
    // Detect orientation
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    CGRect frame = pTblContactDetails.frame;
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration:0.3f];
    
    // Reduce size of the Table view
    if (orientation == UIInterfaceOrientationPortrait || orientation == UIInterfaceOrientationPortraitUpsideDown)
        frame.size.height += keyboardBounds.size.height;
    else 
        frame.size.height += keyboardBounds.size.width;
    
    // Apply new size of table view
    pTblContactDetails.frame = frame;
    
    [UIView commitAnimations];
}


/*- (void)keyboardWillShow {
    
    // Animate the current view out of the way
    [UIView animateWithDuration:0.3f animations:^ {
        self.view.frame = CGRectMake(0, -80, 320, 568);
    }];
    
}

- (void)keyboardWillHide {

    // Animate the current view back to its original position
    [UIView animateWithDuration:0.3f animations:^ {
        self.view.frame = CGRectMake(0, 0, 320, 568);
    }];
    
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
    selector:@selector(keyboardWillShow) name:UIKeyboardDidShowNotification
    object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
    selector:@selector(keyboardWillHide) name:UIKeyboardWillHideNotification
    object:nil];
 
}*/

- (void)tctFieldChange:(UITextField *)sender {
    
    NSInteger cellPosition = sender.tag;
    UITextField *txt = (UITextField *)sender;
    NSString *slid=[NSString stringWithFormat:@"%@",txt.text];
    NSLog(@"slid %@",slid);
    [slidervalue_array replaceObjectAtIndex:cellPosition withObject:slid];
    //[pTblContactDetails reloadRowsAtIndexPaths:[NSArray arrayWithObject:[NSIndexPath indexPathForRow:cellPosition inSection:0]]withRowAnimation:UITableViewRowAnimationNone];
    
}

/*- (void) textFieldDidBeginEditing:(UITextField *)textField {
 UITableViewCell *cell;
 
 if (floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_6_1) {
 // Load resources for iOS 6.1 or earlier
 cell = (UITableViewCell *) textField.superview.superview;
 
 } else {
 // Load resources for iOS 7 or later
 cell = (UITableViewCell *) textField.superview.superview.superview;
 // TextField -> UITableVieCellContentView -> (in iOS 7!)ScrollView -> Cell!
 }
 [pTblContactDetails scrollToRowAtIndexPath:[pTblContactDetails  indexPathForCell:cell] atScrollPosition:UITableViewScrollPositionTop animated:YES];
 }*/


- (IBAction)fnGoBack:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}



/*- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
 
 }*/

//// keyboard hide while enter the text field ////////


/*-(void)viewDidAppear:(BOOL)animated
 {
 // Register notification when the keyboard will be show
 [[NSNotificationCenter defaultCenter] addObserver:self
 selector:@selector(keyboardWillShow:)
 name:UIKeyboardWillShowNotification
 object:nil];
 // Register notification when the keyboard will be hide
 [[NSNotificationCenter defaultCenter] addObserver:self
 selector:@selector(keyboardWillHide:)
 name:UIKeyboardWillHideNotification
 object:nil];
 }*/
/*
 - (BOOL)textFieldShouldReturn:(UITextField *)textField
 {
 SimpleTableCell *cell;
 
 for (int i = 0; i < [pArrSelectedSeats count]; i++) {
 
 if ([pArrSelectedSeats count] == [pArrSelectedSeats count]-1) {
 [cell.pTxtName resignFirstResponder];
 } else {
 [cell.pTxtName becomeFirstResponder];
 }
 
 }
 
 //[textFieldAge resignFirstResponder];
 //[textFieldName resignFirstResponder];
 
 return YES;
 }*/


/*-(void) keyboardWillShow:(NSNotification *)note
 {
 // Get the keyboard size
 CGRect keyboardBounds;
 [[note.userInfo valueForKey:UIKeyboardFrameBeginUserInfoKey] getValue: &keyboardBounds];
 
 // Detect orientation
 UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
 CGRect frame = pTblContactDetails.frame;
 
 // Start animation
 [UIView beginAnimations:nil context:NULL];
 [UIView setAnimationBeginsFromCurrentState:YES];
 [UIView setAnimationDuration:0.3f];
 
 // Reduce size of the Table view
 if (orientation == UIInterfaceOrientationPortrait || orientation == UIInterfaceOrientationPortraitUpsideDown)
 frame.size.height -= keyboardBounds.size.height;
 else
 frame.size.height -= keyboardBounds.size.width;
 
 // Apply new size of table view
 pTblContactDetails.frame = frame;
 
 // Scroll the table view to see the TextField just above the keyboard
 if (textFieldAge)
 {
 CGRect textFieldRect = [pTblContactDetails convertRect:textFieldAge.bounds fromView:textFieldAge];
 [pTblContactDetails scrollRectToVisible:textFieldRect animated:NO];
 } else if (textFieldName) {
 CGRect textFieldRect = [pTblContactDetails convertRect:textFieldName.bounds fromView:textFieldName];
 [pTblContactDetails scrollRectToVisible:textFieldRect animated:NO];
 
 }
 
 [UIView commitAnimations];
 }*/

/*- (void)textFieldDidEndEditing:(UITextField *)textField
 {
 textFieldAge = nil;
 textFieldName = nil;
 
 }
 - (void)textFieldDidBeginEditing:(UITextField *)textField
 {
 textFieldAge = textField;
 textFieldName = textField;
 }*/

/*-(void) keyboardWillHide:(NSNotification *)note
 {
 // Get the keyboard size
 CGRect keyboardBounds;
 [[note.userInfo valueForKey:UIKeyboardFrameBeginUserInfoKey] getValue: &keyboardBounds];
 
 // Detect orientation
 UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
 CGRect frame = pTblContactDetails.frame;
 
 [UIView beginAnimations:nil context:NULL];
 [UIView setAnimationBeginsFromCurrentState:YES];
 [UIView setAnimationDuration:0.3f];
 
 // Reduce size of the Table view
 if (orientation == UIInterfaceOrientationPortrait || orientation == UIInterfaceOrientationPortraitUpsideDown)
 frame.size.height += keyboardBounds.size.height;
 else
 frame.size.height += keyboardBounds.size.width;
 
 // Apply new size of table view
 pTblContactDetails.frame = frame;
 
 [UIView commitAnimations];
 }*/

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
