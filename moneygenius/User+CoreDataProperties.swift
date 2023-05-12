//
//  User+CoreDataProperties.swift
//  moneygenius
//
//  Created by MacBook Pro on 09/05/23.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var age: Int64

}

extension User : Identifiable {

}
