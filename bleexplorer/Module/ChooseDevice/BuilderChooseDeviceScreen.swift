//
//  BuilderChooseDeviceScreen.swift
//  bleexplorer
//
//  Created by DatNguyen on 4/10/21.
//

import UIKit

struct ChooseDiviceBuilder {

    static func buildModule() -> UIViewController  {
        
        let view = ViewChooseDevice(nibName: "ViewChooseDevice", bundle: nil)
        
        //MARK: Initialise components.
        let presenter = PresenterChooseDevice()
        let interactor = InteractorChooseDevice()
        let router = RouterChooseDevice()
        router.viewController = view
        
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
