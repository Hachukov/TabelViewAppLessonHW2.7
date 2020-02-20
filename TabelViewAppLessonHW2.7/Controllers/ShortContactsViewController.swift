//
//  ShortContactsViewController.swift
//  TabelViewAppLessonHW2.7
//
//  Created by Arsen Hachuk on 19.02.2020.
//  Copyright © 2020 Arsen Hachuk. All rights reserved.
//

import UIKit

class ShortContactsViewController: UITableViewController {
    
    private let contactList = ContactModel.getFulname()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShortContactCell", for: indexPath)
        let contact = contactList[indexPath.row]
        cell.textLabel?.text = "\(contact.name) \(contact.surname)"
        
        
        return cell
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let ditailVc = segue.destination as! DitailViewController
            ditailVc.contactmodel = contactList[indexPath.row]
        }
    }
    
    
}
