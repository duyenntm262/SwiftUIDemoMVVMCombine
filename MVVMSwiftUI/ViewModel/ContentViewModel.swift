//
//  ContentViewModel.swift
//  MVVMSwiftUI
//
//  Created by Din Din on 22/04/2024.
//

import Foundation
import Combine

class ContentViewModel: ObservableObject {
    @Published var arrayItems: PlaceholderResponseModel = []
    var cancellable = Set<AnyCancellable>()
    let service: ContentService
    
    init(service:ContentService) {
        self.service = service
        getServerData()
    }
    func getServerData() {
        service.getPlaceholderData()
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print("error", error)
                case .finished:
                    print("completion")
                }
            } receiveValue: { [weak self] response in
                self?.arrayItems = response
            }
            .store(in: &cancellable)
    }
    
    func getData() {
        let item = PlaceholderResponseModelElement(userID: 1, id: 1, title: "test", body: "test description")
        let item2 = PlaceholderResponseModelElement(userID: 1, id: 2, title: "test1", body: "test description1")
        arrayItems.append(item)
        arrayItems.append(item2)
    }
}
