//
//  MVVMSwiftUIApp.swift
//  MVVMSwiftUI
//
//  Created by Din Din on 22/04/2024.
//

import SwiftUI

@main
struct MVVMSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            let service = ContentService()
            let viewModel = ContentViewModel(service: service)
            ContentView(viewModel: viewModel)
        }
    }
}
