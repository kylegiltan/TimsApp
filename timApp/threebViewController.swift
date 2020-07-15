//
//  threebViewController.swift
//  timApp
//
//  Created by Kyle Gil Tan on 7/8/20.
//  Copyright © 2020 Kyle Gil Tan. All rights reserved.
//

import UIKit

class threebViewController: UIViewController {

    var threebNames = ["Gil Tan, Kyle", "Linehan, Tim"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
    /*
     
     CAN'T PASS OVER INFO THROUGH PLUS BUTTON
     
     */
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "addnew" {
//            let destination = segue.destination as! threeaForthreebViewController
//            //let index = tableView.indexPathForSelectedRow!.row
//            //destination.nameLabel.text = "self.title!"
//            destination.title = "self.title"
//        }
//        else{
//            if let selectedPath = tableView.indexPathForSelectedRow{
//                tableView.deselectRow(at: selectedPath, animated: false)
//            }
//        }
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension threebViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return threebNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! threebTableViewCell
        cell.name?.text = threebNames[indexPath.row]
        cell.date?.text = "July 10th, 2020"
        //add picture
        return cell
    }
    
    
}
