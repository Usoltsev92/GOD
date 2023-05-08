//
//  GodViewController.swift
//  Traditions_of_the_north
//
//  Created by Александр Усольцев on 08.05.2023.
//

import UIKit

class GodViewController: UIViewController {

    @IBOutlet weak var goBack: UIButton!
    
    @IBAction func goBackAction(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
