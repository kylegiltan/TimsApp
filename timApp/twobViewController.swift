//
//  twobViewController.swift
//  timApp
//
//  Created by Kyle Gil Tan on 7/8/20.
//  Copyright © 2020 Kyle Gil Tan. All rights reserved.
//

import UIKit

class twobViewController: UIViewController {
    
    @IBOutlet weak var shopAddressOutlet: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    
    var shopName: String?
    var shopAddress: String?
    var twobNames = ["Andrews, Erin", "Gentile, Brendan", "Gil Tan, Kyle", "Linehan, Tim", "McGuire, Kyle", "Thomas-Bosum, Maarten", "Trummer, Alex"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        tableView.delegate = self
        tableView.dataSource = self
        //if let shopName = shopName{
            self.title = shopName
            shopAddressOutlet.text = shopAddress
        //}
        // Do any additional setup after loading the view.
    }
    
    @IBAction func homeButtonPressed(_ sender: UIBarButtonItem) {
        //let isPresenting = presentingViewController is UINavigationController
        //if isPresenting{
            //dismiss(animated: true, completion: nil)
        //}
        //else{
            navigationController?.popViewController(animated: true)
        //}
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "edititem" {
            let destination = segue.destination as! threebViewController
            let index = tableView.indexPathForSelectedRow!.row
            destination.title = twobNames[index]
        }
        else{
            if let selectedPath = tableView.indexPathForSelectedRow{
                tableView.deselectRow(at: selectedPath, animated: false)
            }
        }
    }
//    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension twobViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return twobNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = twobNames[indexPath.row]
        return cell
    }
    
    
}
