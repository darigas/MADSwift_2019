//
//  ViewController.swift
//  Contacts
//
//  Created by Dariga Akhmetova on 3/5/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import UIKit

class ContactListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Declaration og IBOutlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var addContactButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
    
    //Setup function for ViewController
    func setupUI() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    //DataSource delegation
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier: String = "myCell"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
        
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: identifier)
        }
        
        cell?.textLabel?.text = "Row \(indexPath.row)"
        cell?.detailTextLabel?.text = "Name \(indexPath.row)"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let myHeader = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 50))
        myHeader.backgroundColor = UIColor.yellow
        return myHeader
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let myHeader = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 50))
        myHeader.backgroundColor = UIColor.red
        return myHeader
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected row at \(indexPath.row)")
    }
    
    @IBAction func showContactDetail(_ sender: Any) {
        performSegue(withIdentifier: "showContactDetail", sender: nil)
    }
}

