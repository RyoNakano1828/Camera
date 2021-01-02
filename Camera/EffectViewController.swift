//
//  EffectViewController.swift
//  Camera
//
//  Created by NeppsStaff on 2021/01/02.
//

import UIKit

class EffectViewController: UIViewController {
    
    //何も加工していない画像を受け取る
    var originalImage: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        effectImageView.image = originalImage
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBOutlet weak var effectImageView: UIImageView!
    @IBAction func effectButtonAction(_ sender: Any) {
    }
    @IBAction func backButtonAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
