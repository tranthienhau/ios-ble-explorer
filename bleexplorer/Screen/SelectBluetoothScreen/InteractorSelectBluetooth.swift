//
//  InteractorSelectBluetooth.swift
//  bleexplorer
//
//  Created by DatNguyen on 4/11/21.
//

protocol InteractorSelectBluetoothProtocol {
    func handleGetDataBluetooth()
}

class InteractorSelectBluetooth: InteractorSelectBluetoothProtocol {
    
    weak var presenter: PresenterSelectBluetoothProtocol?
    
    //MARK: - Implement Protocol
    func handleGetDataBluetooth() {
        let randomNumber = Int.random(in: 1..<10)
        
        guard let injectPresenter = presenter else {return}
        injectPresenter.returnDataBluetooth(numberItem: randomNumber)
    }
}
