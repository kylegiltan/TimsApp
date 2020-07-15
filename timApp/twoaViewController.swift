//
//  twoaViewController.swift
//  timApp
//
//  Created by Kyle Gil Tan on 7/8/20.
//  Copyright © 2020 Kyle Gil Tan. All rights reserved.
//

import UIKit

class twoaViewController: UIViewController {

    @IBOutlet weak var shopName: UILabel!
    @IBOutlet weak var shopAddress: UILabel!
    @IBOutlet weak var shopNumber: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shopName.text = "Alpha"
        shopAddress.text = "99 Jefferson St."
        shopNumber.text = "(650) 787-8391"
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "passShopName"{
            let destination = segue.destination as! twobViewController
            destination.shopName = shopName.text
            destination.shopAddress = shopAddress.text
        }
    }
    @IBAction func signOutPressed(_ sender: Any) {
       // let isPresenting = presentingViewController is UINavigationController
        //if isPresenting{
            print("a")
            dismiss(animated: true, completion: nil)
        //}
        //else{
            print("b")
          //  navigationController?.popViewController(animated: true)
        //}
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
