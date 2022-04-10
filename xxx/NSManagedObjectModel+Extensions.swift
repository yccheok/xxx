//
//  NSManagedObjectModel+Extensions.swift
//  xxx
//
//  Created by Yan Cheng Cheok on 09/04/2022.
//

import Foundation
import CoreData

extension NSManagedObjectModel {
    static let xxx = managedObjectModel("xxx")
    
    private static func managedObjectModel(_ name: String) -> NSManagedObjectModel {
        // https://stackoverflow.com/questions/10579767/why-the-extension-is-momd-but-not-xcdatamodel-when-search-the-path-for-the-m
        // https://developer.apple.com/documentation/coredata/setting_up_a_core_data_stack/setting_up_a_core_data_stack_manually
        guard let modelURL = Bundle.main.url(forResource: name, withExtension: "momd") else {
            fatalError("Failed to find data model")
        }

        guard let managedObjectModel = NSManagedObjectModel(contentsOf: modelURL) else {
            fatalError("Failed to create model from file: \(modelURL)")
        }

        return managedObjectModel
    }
}
