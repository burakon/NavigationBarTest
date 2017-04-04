//
//  WebWalletViewController.swift
//  NavigationBartest
//
//  Created by Reiko Goto on 2017/03/30.
//  Copyright © 2017年 Her. All rights reserved.
//

import UIKit

class RightHomeViewController: UIViewController {

    
    @IBOutlet weak var rightContainerView: UIView!
    weak var delegate: HomeViewContorollerDelegate!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        var navibar = UINavigationBar.init()
        
        navibar = (self.childViewControllers[0] as! UINavigationController).navigationBar
        self.view.addSubview(navibar)
    }
    
    
    @IBAction func didPushLeftButton(sender: AnyObject) {
        delegate?.changeTabstatus()
    }
       
    func getNavigationInfomation(navigationBar : UINavigationBar) {
        print(#function)
    }

}



protocol HomeViewContorollerDelegate: class {
    func changeTabstatus()
}

