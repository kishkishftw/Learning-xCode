//
//  studentClass.swift
//  Lab4v2
//
//  Created by Kishore Baskar on 7/10/17.
//  Copyright © 2017 Kishore Baskar. All rights reserved.
//

import Foundation

class studentClass {
    var name: String
    var major: String
    var university: String
    var joinYear: String
    
    init(name: String, major: String, university: String, joinYear: String) {
        self.name = name
        self.major = major
        self.university = university
        self.joinYear = joinYear
    }
}
