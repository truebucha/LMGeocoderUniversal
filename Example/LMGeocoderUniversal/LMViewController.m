//
//  LMViewController.m
//  LMGeocoderUniversal
//
//  Created by truebucha on 01/28/2018.
//  Copyright (c) 2018 truebucha. All rights reserved.
//

#import "LMViewController.h"
#import <LMGeocoderUniversal/LMGeocoderUniversal.h>

@interface LMViewController ()

@end

@implementation LMViewController

- (void) viewDidLoad {
    
    [super viewDidLoad];
	
    LMGeocoder * geocoder = [LMGeocoder geocoder];
    NSArray * result = [geocoder geocodeAddressString: @"Minsk. Belarus"
                                              service: kLMGeocoderGoogleService
                                                error: nil];
    NSLog(@"%@", [(LMAddress *)result.firstObject country]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
