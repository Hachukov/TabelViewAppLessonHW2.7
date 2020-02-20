//
//  DitailViewController.swift
//  TabelViewAppLessonHW2.7
//
//  Created by Arsen Hachuk on 20.02.2020.
//  Copyright © 2020 Arsen Hachuk. All rights reserved.
//

import UIKit

class DitailViewController: UIViewController {

    @IBOutlet var mailLabel: UILabel!
    
    @IBOutlet var telLabel: UILabel!
    
    var contactmodel: ContactModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mailLabel.text = contactmodel.emale
        telLabel.text = String(contactmodel.telNumber)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
