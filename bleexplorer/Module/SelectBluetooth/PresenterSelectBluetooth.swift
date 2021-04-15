//
//  PresenterSelectBluetooth.swift
//  bleexplorer
//
//  Created by DatNguyen on 4/11/21.
//

import Foundation

protocol PresenterSelectBluetoothProtocol: class {
    func getDataBluetooth()
//    func returnDataBluetooth(numberItem: Int)
}

class PresenterSelectBluetooth : PresenterSelectBluetoothProtocol {

    weak var view: ViewSelectBluetoothProtocol?
    var router: RouterSelectBluetoothProtocol?
    var interactor: InteractorSelectBluetoothProtocol?
    
    //MARK: - Implement Protocol
    func getDataBluetooth() {
        guard let injectInteractor = interactor else {return}
        guard  let injectView = view else { return }
        injectInteractor.handleGetDataBluetooth(result: {value in
                injectView.showDataListBluetooth(numberItem: value)
        }, error: {msg in
            
        })
    }
    
//    func returnDataBluetooth(numberItem: Int) {
//        guard  let injectView = view else { return }
//        injectView.showDataListBluetooth(numberItem: numberItem)
//    }
}
