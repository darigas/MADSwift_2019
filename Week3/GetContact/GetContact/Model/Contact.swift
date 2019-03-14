//
//  Contact.swift
//  GetContact
//
//  Created by Narikbi on 2/21/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import Foundation

enum TagColor: String {
    case brown
    case blue
    case cyan
    case green
    case orange
    case red
    case magenta
    case purple
    case white
}

class Contact {
    
    var firstname: String
    var lastname: String
    var phone: String
    var tag: TagColor
    
    init(firstname: String, lastname: String, phone: String, tag: TagColor) {
        
        self.firstname = firstname
        self.lastname = lastname
        self.phone = phone
        self.tag = tag
    }
    
    static func save(_ contacts: [Contact]) {
        
        var firstnames = [String]()
        var lastnames = [String]()
        var phones = [String]()
        var tags = [TagColor.RawValue]()
        
        for contact in contacts {
            firstnames.append(contact.firstname)
            lastnames.append(contact.lastname)
            phones.append(contact.phone)
            tags.append(contact.tag.rawValue)
        }
        
        print (contacts)
        
        UserDefaults.standard.set(firstnames, forKey: "firstnames")
        UserDefaults.standard.set(lastnames, forKey: "lastnames")
        UserDefaults.standard.set(phones, forKey: "phones")
        UserDefaults.standard.set(tags, forKey: "tags")
        
    }
    
    static func saveOneContact(_ contact: Contact) {
        
        var contacts = Contact.get()
        contacts.append(contact)
        Contact.save(contacts)
    }
    
    static func get() -> [Contact] {
        var contacts = [Contact]()
        
        let defaults = UserDefaults.standard
        let firstnames = defaults.stringArray(forKey: "firstnames") ?? [String]()
        
        let lastnames = defaults.stringArray(forKey: "lastnames") ?? [String]()
        let phones = defaults.stringArray(forKey: "phones") ?? [String]()
        
        let tags = defaults.stringArray(forKey: "tags") ?? [String]()
        
        for index in 0..<firstnames.count {
            let contact = Contact(firstname: firstnames[index], lastname: lastnames[index], phone: phones[index], tag: TagColor(rawValue: tags[index])!)
            contacts.append(contact)
            print(contacts)
        }
        return contacts
    }
}
