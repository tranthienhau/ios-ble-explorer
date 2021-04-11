//
//  CustomViewTitle.swift
//  bleexplorer
//
//  Created by DatNguyen on 4/11/21.
//

import UIKit

class CustomViewTitle: UIView {

    @IBInspectable var stringTitle : String = ""
    @IBInspectable var stringDescription : String = ""
    @IBInspectable var showButtonBack : Bool = true
    
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbDescription: UILabel!
    @IBOutlet weak var btnBack: UIButton!
    
    override init(frame: CGRect) {
         super.init(frame: frame)
         setUpView()
     }
     
     required init?(coder aDecoder: NSCoder) {
         super.init(coder: aDecoder)
         setUpView()
     }
     
     func setUpView() {
         Bundle.main.loadNibNamed("CustomViewTitle", owner: self, options: nil)
         addSubview(contentView)
         contentView.frame = self.bounds
         contentView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
     }
     
     override func awakeFromNib() {
         super.awakeFromNib()
        
        self.lbTitle.text = stringTitle.uppercased()
        self.lbDescription.text = stringDescription
        
        self.btnBack.isHidden = !showButtonBack
        
        
     }
    
    //MARK: Button Action
    @IBAction func btnBack_Action(_ sender: UIButton) {
        if let parent = self.parentViewController {
            parent.navigationController?.popViewController(animated: true)
        }
    }
    
}
