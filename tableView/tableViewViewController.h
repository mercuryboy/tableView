//
//  tableViewViewController.h
//  tableView
//
//  Created by sixcroresapp on 5/30/14.
//  Copyright (c) 2014 NTL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tableViewViewController : UIViewController <UITextFieldDelegate>{
    
    NSMutableArray *pArrSelectedSeats;
    UISegmentedControl *segmentedControl;
    
    
    IBOutlet UITableView *pTblContactDetails;
    UITextField *textFieldName,*textFieldAge,*slider_textfield;
    NSInteger nextIndexPathRow;
    UITextField *tfA1,*tfA2,*tfA3,*tfA4,*tfA5,*tfA6,*tfA7,*tfA8,*tfA9,*tfA10,*tfA11,*tfA12;
    NSMutableArray *textFieldValuesArray;
    
    IBOutlet UIScrollView *pScrollView;
    
    NSMutableArray *slidervalue_array;
}
- (IBAction)fnGoBack:(id)sender;

@property (strong,retain) NSMutableArray *pArrSelectedSeats;

@property BOOL isBoardGame;
@property (nonatomic, copy) NSString *name, *originalGameName;
@property (nonatomic, strong) NSArray *players;
@property (nonatomic, strong) NSMutableDictionary *ogres;

@end
