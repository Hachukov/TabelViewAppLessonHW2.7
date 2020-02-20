//
//  FullContactTableViewController.swift
//  TabelViewAppLessonHW2.7
//
//  Created by Arsen Hachuk on 19.02.2020.
//  Copyright © 2020 Arsen Hachuk. All rights reserved.
//

import UIKit

class FullContactTableViewController: UITableViewController {
    
    private let contactList = ContactModel.getFulname()
    private var sectionName: [String] = []
    private var contactTelAndMail:[[String]] = []
    private var arrForLoop:[String] = []

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return contactList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        for i in contactList {
            sectionName.append("\(i.name) \(i.surname)" )
        }
        
        return sectionName[section]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }
  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FullContactCell", for: indexPath)
        for i in contactList {
            arrForLoop.append(String(i.telNumber))
            arrForLoop.append(i.emale)
            contactTelAndMail.append(arrForLoop)
            arrForLoop.removeAll()
        }
         
        let contact = contactTelAndMail[indexPath.section]
        cell.textLabel?.text = contact[indexPath.row]

        return cell
    }
}
