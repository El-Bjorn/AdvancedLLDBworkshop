//
//  ViewController.swift
//  Tbl_MixedDebug
//
//  Created by BjornC on 6/8/16.
//  Copyright © 2016 Builtlight. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        
        // register our cell id
        print("CELL_IDENT= \(CELL_IDENT)") // Swift sees the const NSString 'CELL_IDENT' as a 'let' String constant
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: CELL_IDENT)
        
        // create the objective-C data source
        tableView.dataSource = ObjcDataSource()
    }

}

