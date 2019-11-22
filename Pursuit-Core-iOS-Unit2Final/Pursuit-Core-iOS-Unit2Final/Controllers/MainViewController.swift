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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailView" {
            guard let colorDVC = segue.destination as? DetailViewController else {
                fatalError("unexpected segue")
            }
            guard let selectedIndexPath = tableView.indexPathForSelectedRow else {
                fatalError("no row selected.")
            }
            colorDVC.detailColorVC = crayola[selectedIndexPath.row]
        }
    }
    
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
        cell.selectedBackgroundView?.backgroundColor = UIColor.clear
        cell.backgroundColor? = UIColor(displayP3Red: CGFloat(crayon.red / 255), green: CGFloat(crayon.green / 255), blue: CGFloat(crayon.blue / 255), alpha: 1.0)
        
        if crayon.name == "Black" {
            cell.textLabel?.textColor = .white
            cell.detailTextLabel?.textColor = .white
        }
        
        return cell
    }
    

}
