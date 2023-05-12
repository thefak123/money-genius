//
//  PersistanceController.swift
//  moneygenius
//
//  Created by MacBook Pro on 09/05/23.
//

import CoreData
import Foundation

class DataController : ObservableObject{
    let container = NSPersistentContainer(name: "Model")
    
    init(){
        container.loadPersistentStores(completionHandler: { desc, error in
            if let error = error {
                print("Failed to load. Because \(error.localizedDescription)")
            }
        })
    }
}
