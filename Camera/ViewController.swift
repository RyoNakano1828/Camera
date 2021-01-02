//
//  ViewController.swift
//  Camera
//
//  Created by NeppsStaff on 2021/01/02.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var pictureImageView: UIImageView!
    @IBAction func cameraButton(_ sender: Any) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .camera
        present(imagePickerController, animated: true, completion: nil)
    }
    
}

