//
//  studentClass.swift
//  Lab 5
//
//  Created by Kishore Baskar on 7/11/17.
//  Copyright © 2017 Kishore Baskar. All rights reserved.
//

import Foundation

class studentClass : NSObject, NSCoding {
   
    

    
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

    required init?(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: "name") as! String
        major = aDecoder.decodeObject(forKey: "major") as! String
        university = aDecoder.decodeObject(forKey: "university") as! String
        joinYear = aDecoder.decodeObject(forKey: "joinYear") as! String
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
        aCoder.encode(major, forKey: "major")
        aCoder.encode(university, forKey: "university")
        aCoder.encode(joinYear, forKey: "joinYear")
    }
    
    override var description : String {
        get {
            return "Name: \(name)  Major: \(major)  University: \(university)  Year Joined: \(joinYear)"
        }
    }
    
}
