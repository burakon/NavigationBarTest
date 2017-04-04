//
//  DebidChildViewController.swift
//  NavigationBartest
//
//  Created by Reiko Goto on 2017/03/30.
//  Copyright © 2017年 Her. All rights reserved.
//

import UIKit

class LeftHomeViewController: UIViewController {
    
    
    @IBOutlet weak var leftContainerView: UIView!
    weak var delegate: HomeViewContorollerDelegate!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        var navibar = UINavigationBar.init() //Xibで作ったIBOutletのnabigationBarに対してsetできないので仕方がなくinit
        navibar = (self.childViewControllers[0] as! UINavigationController).navigationBar
        self.view.addSubview(navibar)
    }
    
    @IBAction func didPushRightButton(sender: AnyObject) {
         delegate?.changeTabstatus()
    }
    
    
    func getNavigationInfomation(navigationBar : UINavigationBar) {
        print(#function)
    }
    
    
}


