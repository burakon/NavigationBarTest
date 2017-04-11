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
    weak var delegate: HomeViewContorollerDelegate?
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let naviController = (self.childViewControllers[0] as! UINavigationController)
        self.view.addSubview(naviController.navigationBar)
    }
    
    
    @IBAction func didPushLeftButton(sender: AnyObject) {
        delegate?.homeViewControllerDidChangeStatus()
    }
       
    func getNavigationInfomation(navigationBar : UINavigationBar) {
        print(#function)
    }

}



protocol HomeViewContorollerDelegate: class {
    func homeViewControllerDidChangeStatus()
}

