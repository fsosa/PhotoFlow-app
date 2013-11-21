//
//  PFHomeViewController.m
//  PhotoFlow
//
//  Created by Fidel Sosa on 11/21/13.
//  Copyright (c) 2013 FTJ. All rights reserved.
//

#import "PFHomeViewController.h"

@interface PFHomeViewController ()

@end

@implementation PFHomeViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)takePicture:(id)sender {
    BOOL cameraAvailable = [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera];
    
    if (!cameraAvailable) {
        NSLog(@"Need a camera!");
        return;
    }
    
    NSArray *availableMediaTypes = [UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypeCamera];
    
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    [imagePickerController setMediaTypes:availableMediaTypes];
    [imagePickerController setDelegate:self];
    
    [self presentViewController:imagePickerController animated:YES completion:nil];
    
}


#pragma mark - UIImagePickerControllerDelegate Methods

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    NSLog(@"done");
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
