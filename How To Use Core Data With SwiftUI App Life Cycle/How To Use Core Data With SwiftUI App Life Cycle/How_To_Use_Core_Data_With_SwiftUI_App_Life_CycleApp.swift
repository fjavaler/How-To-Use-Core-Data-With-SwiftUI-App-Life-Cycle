//
//  How_To_Use_Core_Data_With_SwiftUI_App_Life_CycleApp.swift
//  How To Use Core Data With SwiftUI App Life Cycle
//
//  Created by Frederick Javalera on 4/3/21.
//

import SwiftUI

@main
struct How_To_Use_Core_Data_With_SwiftUI_App_Life_CycleApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
