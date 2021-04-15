//
//  BuilderSelectBluetooth.swift
//  bleexplorer
//
//  Created by DatNguyen on 4/11/21.
//

import UIKit

struct SelectBluetoothBuilder {
    static func buildModule() -> UIViewController {
        
        let view = ViewSelectBluetooth(nibName: "ViewSelectBluetooth", bundle: nil)
        
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
        
        return view
    }
}
