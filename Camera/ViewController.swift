//
//  ViewController.swift
//  Camera
//
//  Created by NeppsStaff on 2021/01/02.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    //画面遷移先に渡す画像
    var captureImage: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBOutlet weak var pictureImageView: UIImageView!
    @IBAction func cameraButton(_ sender: Any) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .camera
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
    
    //撮影後に呼ばれるdelegateメソッド
    func imagePickerController(_ picker: UIImagePickerController, didFinishPikingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        /*
        pictureImageView.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        dismiss(animated: true, completion: nil)
        */
        captureImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        dismiss(animated: true, completion: {
            self.performSegue(withIdentifier: "showEffevtView", sender: nil)
        })
    }
    
    //画面遷移する時に画像を渡す
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextViewController = segue.description as? EffectViewController {
            nextViewController.originalImage = captureImage
        }
    }
    
    
}

