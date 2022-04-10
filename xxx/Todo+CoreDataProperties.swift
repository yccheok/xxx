//
//  Todo+CoreDataProperties.swift
//  xxx
//
//  Created by Yan Cheng Cheok on 09/04/2022.
//
//

import Foundation
import CoreData


extension Todo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Todo> {
        return NSFetchRequest<Todo>(entityName: "Todo")
    }

    @NSManaged public var title: String?
    @NSManaged public var body: String?

}

extension Todo : Identifiable {

}
