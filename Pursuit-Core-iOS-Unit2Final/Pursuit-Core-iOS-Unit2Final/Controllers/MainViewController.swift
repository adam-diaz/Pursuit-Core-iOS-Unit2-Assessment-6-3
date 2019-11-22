//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    var crayola = [Crayon]() {
        didSet {
            tableView.reloadData()
        }
    }
    
  override func viewDidLoad() {
    super.viewDidLoad()
    loadData()
    
  }

    // prepare(for: ) goes here
    
    func loadData() {
        crayola = Crayon.allTheCrayons
    }

}

