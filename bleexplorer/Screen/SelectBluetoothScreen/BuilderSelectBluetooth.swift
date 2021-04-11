//
//  BuilderSelectBluetooth.swift
//  bleexplorer
//
//  Created by DatNguyen on 4/11/21.
//

import Foundation

class SelectBluetoothBuilder {
    class func buildModule(arroundView view:ViewSelectBluetooth) {
        
        //MARK: Initialise components.
        let presenter = PresenterSelectBluetooth()
        let interactor = InteractorSelectBluetooth()
        let router = RouterSelectBluetooth()
        
        //MARK: link Viper components.
        // Setup View
        view.presenter = presenter
        // Setup Presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        // Setup Interactor
        interactor.presenter = presenter
    }
}
