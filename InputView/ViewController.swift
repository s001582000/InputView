//
//  ViewController.swift
//  InputView
//
//  Created by 梁雅軒 on 2017/2/24.
//  Copyright © 2017年 zoaks. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    var arrData = [String]()
    @IBOutlet weak var tfMessage: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 1...10{
            arrData.append("\(i)")
        }
        //實現pickerView
        let pickerView = UIPickerView()
        pickerView.delegate = self
        pickerView.dataSource = self
        //加入對象的inputView
        //UITextField 以及 UITextView都會有inputView的屬性
        tfMessage.inputView = pickerView
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    //pickerView delegate
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrData[row]
    }

}
