//
//  ViewChooseDevice.swift
//  bleexplorer
//
//  Created by DatNguyen on 4/10/21.
//

import UIKit

protocol ViewChooseDeviceProtocol: class {
    
}

class ViewChooseDevice: UIViewController {

    var presenter : PresenterChooseDeviceProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK: - Button Action
    @IBAction func btnSmartScale_Action(_ sender: UIButton) {
        guard let injectPresenter = presenter else { return }
        injectPresenter.touchButtonSmartScale()
    }
    
    @IBAction func btnSmartWatch_Action(_ sender: UIButton) {
        guard let injectPresenter = presenter else { return }
        injectPresenter.touchButtonSmartWatch()
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


extension ViewChooseDevice : ViewChooseDeviceProtocol {
    
}
