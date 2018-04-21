//
//  ColorPickerViewController.swift
//  ColorPicker
//
//  Created by Sandra Berndt on 4/20/18.
//  Copyright © 2018 Sandra Berndt. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var colorPickerView: UIPickerView!
    
    
    var pickerDataSource = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.colorPickerView.dataSource = self;
        self.colorPickerView.delegate = self;

        // Do any additional setup after loading the view.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return pickerDataSource[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count;
    }
    
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerDataSource[row]
    }

    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(row == 0)
        {
            self.view.backgroundColor = UIColor.red;
        }
        else if(row == 1)
        {
            self.view.backgroundColor = UIColor.orange;
        }
        else if(row == 2)
        {
            self.view.backgroundColor =  UIColor.yellow;
        }
        else if(row == 3)
        {
            self.view.backgroundColor = UIColor.green;
        }
        else if(row == 4)
        {
            self.view.backgroundColor = UIColor.blue;
        }
        else
        {
            self.view.backgroundColor = UIColor.purple;
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
