//
//  ViewController.swift
//  FTPopUp
//
//  Created by TusharKumarPandey on 06/16/2021.
//  Copyright (c) 2021 TusharKumarPandey. All rights reserved.
//

import UIKit
import FTPopUp

@available(iOS 13.0, *)
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnOpenPopUpClick(_ sender: UIButton) {
        let contentVc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "PopUpViewController") as! PopUpViewController
        let popUpVc = FTPopUpController(contentController: contentVc, popupWidth: 300, popupHeight: 300)
        present(popUpVc, animated: true)
        // Note: Some SetUP
//        popupVC.backgroundAlpha = 0.3
//        popupVC.backgroundColor = .black
//        popupVC.canTapOutsideToDismiss = true
//        popupVC.cornerRadius = 10
//        popupVC.shadowEnabled = true
    }

}

