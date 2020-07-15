//
//  threeaViewController.swift
//  timApp
//
//  Created by Kyle Gil Tan on 7/8/20.
//  Copyright © 2020 Kyle Gil Tan. All rights reserved.
//





/*
 
 
 SEE EXTENSION AT BOTTOM, DO I NEED TO INCLUDE IT????
 
 
 */




import UIKit

class threeaViewController: UIViewController {
    
    var nameArray = ["Gil Tan, Kyle", "Linehan, Timothy", "McGuire, Kyle", "Trummer, Alex" ]

    
    @IBOutlet weak var namePickerViewer: UIPickerView!
    @IBOutlet var nameLabel: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        namePickerViewer.delegate = self
        namePickerViewer.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        let isPresenting = presentingViewController is UINavigationController
        if isPresenting{
        print("a")
        dismiss(animated: true, completion: nil)
        }
        else{
            print("b")
          navigationController?.popViewController(animated: true)
        }
    }
    
    @IBAction func saveButtonPRessed(_ sender: Any) {
        let isPresenting = presentingViewController is UINavigationController
        if isPresenting{
            print("a")
            dismiss(animated: true, completion: nil)
        }
        else{
            print("b")
            navigationController?.popViewController(animated: true)
        }
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

extension threeaViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return nameArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return nameArray[row]
    }
    
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        conversionString = formulaArray[row].conversionString
//        if conversionString.lowercased().contains("celcius".lowercased()){
//            signedSegment.isHidden = false
//        }
//        else{
//            signedSegment.isHidden = true
//            userInput.text = userInput.text?.replacingOccurrences(of: "-", with: "")
//            signedSegment.selectedSegmentIndex = 0
//        }
//        let unitsArray = formulaArray[row].conversionString.components(separatedBy: " to ")
//        fromUnits = unitsArray[0]
//        toUnits = unitsArray[1]
//        //fromUnitsLabel.text = formulaArray[row].conversionString
//        fromUnitsLabel.text = fromUnits
//        resultsLabel.text = toUnits
//        calculateConversion()
//    }
    
}
