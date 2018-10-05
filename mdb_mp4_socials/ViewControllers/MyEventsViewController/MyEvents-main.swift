//
//  MyEventsViewController.swift
//  mdb_mp4_socials
//
//  Created by Ajay Raj Merchia on 10/4/18.
//  Copyright © 2018 Ajay Raj Merchia. All rights reserved.
//

import UIKit
import JGProgressHUD

class MyEventsViewController: UIViewController {

    var socialsList: UITableView!
    var eventsList: [Event] = []
    var selectedEvent: Event!
    
    var hud: JGProgressHUD?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        beginDownloadofEvents()
        initEventUpdater()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        reload(tableView: socialsList)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        hud?.dismiss()
    }
    

}