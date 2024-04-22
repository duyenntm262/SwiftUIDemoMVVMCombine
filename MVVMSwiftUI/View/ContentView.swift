//
//  ContentView.swift
//  MVVMSwiftUI
//
//  Created by Din Din on 22/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: ContentViewModel
    
    var body: some View {
        NavigationView {
            List {
                listSection
            }
            .navigationTitle("Content List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ContentViewModel(service: ContentService()))
    }
}

private extension ContentView {
    var listSection: some View {
        Section {
            ForEach(viewModel.arrayItems) { item in
            PlaceholderListRow(item: item)
            }
        }
    }
}
