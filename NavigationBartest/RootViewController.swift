//
//  ViewController.swift
//  NavigationBartest
//
//  Created by Reiko Goto on 2017/03/30.
//  Copyright © 2017年 Her. All rights reserved.
//

import UIKit

class RootViewController: UIViewController ,HomeViewContorollerDelegate{
    
    var tabStatus = TabStatus.LeftOn
    
    @IBOutlet weak var leftContainerView: UIView!
    @IBOutlet weak var rightContainerView: UIView!
    
    enum TabStatus :Int {
        case LeftOn ,LeftOff
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let leftVc  = self.childViewControllers[0] as! RightHomeViewController
        let rightVc = self.childViewControllers[1] as! LeftHomeViewController
        
        leftVc.delegate = self
        rightVc.delegate = self
    }
    
    func homeViewControllerDidChangeStatus () {
        let status = tabStatus == TabStatus.LeftOn ? TabStatus.LeftOff : TabStatus.LeftOn
        tabStatus = status
        resetHiddenStatus()
    }
    
    func resetHiddenStatus(){
        switch tabStatus {
        case TabStatus.LeftOn:
            leftContainerView.hidden = false
        case TabStatus.LeftOff:
            leftContainerView.hidden = true
        }
    }
    
}

    
