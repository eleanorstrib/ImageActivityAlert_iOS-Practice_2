//
//  ViewController.swift
//  imagepicker
//
//  Created by Eleanor Stribling on 8/25/15.
//  Copyright (c) 2015 eleanorstrib. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var activitiesButton: UIButton!
    @IBOutlet weak var alertsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showPhotos() {
        let photoController = UIImagePickerController()
        self.presentViewController(photoController, animated: true, completion: nil)
    }
    
    @IBAction func showActivity() {
        let image = UIImage()
        let activityController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        self.presentViewController(activityController, animated: true, completion: nil)
    }
    
    @IBAction func showAlert() {
        let alertController = UIAlertController()
        let okUser = UIAlertAction(title:"ok", style: UIAlertActionStyle.Default) {action in self.dismissViewControllerAnimated(true, completion: nil)
            }
        alertController.addAction(okUser)
        self.presentViewController(alertController, animated: true, completion: nil)
    }
}
