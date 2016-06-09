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
    var objDS:ObjcDataSource = ObjcDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setup table delegates
        tableView.delegate = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: CELL_IDENT)
        objDS = ObjcDataSource()
        tableView.dataSource = objDS
      
        // register our cell id
        
        //[tableView registerClass(UITableViewCell.self, forCellReuseIdentifier: CELL_IDENT)]
        print("CELL_IDENT= \(CELL_IDENT)")
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

