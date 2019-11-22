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
    tableView.dataSource = self
    loadData()
    
  }
    

    // prepare(for: ) goes here
    
    func loadData() {
        crayola = Crayon.allTheCrayons
    }

}

extension MainViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayola.count
      }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "crayonCell" , for: indexPath)
        
        let crayon = crayola[indexPath.row]
        
        cell.textLabel?.text = crayon.name
        cell.detailTextLabel?.text = crayon.hex

        //        cell.backgroundColor? = UIColor(named: Crayon.init(name: "Almond", red: 239, green: 222, blue: 205, hex: "#EFDECD"))
        

        cell.backgroundColor? = UIColor(displayP3, Red: green,: blue: alpha: )
        
        return cell
    }
    

}
