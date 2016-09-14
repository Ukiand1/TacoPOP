//
//  MainVC.swift
//  TacoPOP
//
//  Created by Uroš Đurđević on 14/09/16.
//  Copyright © 2016 Uroš Đurđević. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var headerView: HeaderView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        headerView.addDropShadow()
    }

    
}
