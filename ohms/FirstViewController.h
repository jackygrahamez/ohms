//
//  FirstViewController.h
//  ohms
//
//  Created by Jack Shultz on 1/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController {
    
    UILabel *headerLabel;
    UITextField *voltsField;
    UITextField *ohmsField;
    UITextField *ampsField;

}

#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@end
