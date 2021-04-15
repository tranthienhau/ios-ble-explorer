//
//  PresenterChooseDevice.swift
//  bleexplorer
//
//  Created by DatNguyen on 4/10/21.
//

import Foundation


protocol PresenterChooseDeviceProtocol: class {
    func touchButtonSmartScale()
    func touchButtonSmartWatch()
}

class PresenterChooseDevice : PresenterChooseDeviceProtocol {
  
    weak var view: ViewChooseDeviceProtocol?
    var router: RouterChooseDeviceProtocol?
    var interactor: InteractorChooseDeviceProtocol?
    
    //MARK: - Implement Protocol
    func touchButtonSmartScale() {
        guard let injectRouter = router else { return }
        injectRouter.pushToDetail()
    }
    
    func touchButtonSmartWatch() {
        guard let injectRouter = router else { return }
        injectRouter.pushToDetail()
    }
}
