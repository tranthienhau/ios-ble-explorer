//
//  ViewLogWeight.swift
//  bleexplorer
//
//  Created by DatNguyen on 4/11/21.
//

import UIKit

class ViewLogWeight: UIViewController {

    @IBOutlet weak var vContain: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupView()
    }

    func setupView() {
        vContain.roundCorners([.topLeft, .topRight], radius: 10.0)
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
