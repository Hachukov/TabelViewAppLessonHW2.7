//
//  ContactModel.swift
//  TabelViewAppLessonHW2.7
//
//  Created by Arsen Hachuk on 19.02.2020.
//  Copyright © 2020 Arsen Hachuk. All rights reserved.
//

import Foundation

struct ContactModel {
    var name: String
    var surname : String
    var telNumber: Int
    var emale: String
    
    var fulName: String {
        return "\(name) \(surname)"
    }
    
}

extension ContactModel {
    static func getFulname() -> [ContactModel]{
        return [
            ContactModel(name: "Alber", surname: "Einstain", telNumber: 999999, emale: "qqq@mail.ru"),
            ContactModel(name: "Niels", surname: "Bohr", telNumber: 888888, emale: "www@mail.ru"),
            ContactModel(name: "Isak", surname: "Njuton", telNumber: 777777, emale: "eee@mail.ru"),
            ContactModel(name: "Nikola", surname: "Tesla", telNumber: 666666, emale: "rrr@mail.ru"),
            ContactModel(name: "Elon", surname: "Musk", telNumber: 555555, emale: "ttt@mail.ru"),
            ContactModel(name: "Winston", surname: "Churchill", telNumber: 444444, emale: "yyy@mail.ru"),
        ]
    }
}
