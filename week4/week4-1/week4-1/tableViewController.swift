//
//  ViewController.swift
//  week4-1
//
//  Created by laijiaaa1 on 2023/9/19.
//
//Please implement a table view with 2 sections (10 rows and 5 rows for section 0 and section 1 respectively.) Each cell in the table view has one label which will identify the current section and row it stands for. The row height should be 100 pixels.
import UIKit

class TableViewController: UITableViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 10
        } else {
            return 5
        }
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell")!
        cell.textLabel?.text = "This is section \(indexPath.section), row \(indexPath.row)"
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}


