//
//  ViewLogWeight.swift
//  bleexplorer
//
//  Created by DatNguyen on 4/11/21.
//

import UIKit

protocol ViewLogWeightProtocol: class {
    func handleUIInputWeight(isError: Bool)
}

class ViewLogWeight: UIViewController {

    var presenter : PresenterLogWeightProtocolForView?
    
    @IBOutlet weak var vContain: UIView!
    @IBOutlet weak var lbToday: UILabel!
    @IBOutlet weak var vLineUnderWeight: UIView!
    @IBOutlet weak var tfWeight: UITextField!
    
    var isShowPickerDateTime = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupView()
    }

    func setupView() {
        vContain.roundCorners([.topLeft, .topRight], radius: 10.0)
        self.hideKeyboardWhenTappedAround()
        
        let formatDate = DateFormatter()
        formatDate.dateFormat = "yyyy MMM dd"
        self.lbToday.text = formatDate.string(from: Date())
    }
    
    //MARK: - Text Editting
    @IBAction func tfWeight_change(_ sender: UITextField) {
        
    }
    
    //MARK: - Button Action
    
    @IBAction func btnOpenTimePicker_Action(_ sender: UIButton) {
        if isShowPickerDateTime == false {
         
        }else {
            
        }
    }
    
    @IBAction func btnSave_Action(_ sender: UIButton) {
        guard let injectPreSenter = presenter else {
            return
        }
        
        injectPreSenter.btnSaveAction(data: self.tfWeight.text)
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

extension ViewLogWeight: ViewLogWeightProtocol {
    func handleUIInputWeight(isError: Bool) {
        if isError == true {
            self.vLineUnderWeight.backgroundColor = UIColor.red
        }else {
            self.vLineUnderWeight.backgroundColor = UIColor.green
        }
    }
}

