//
//  PlaceholderResponseModel.swift
//  MVVMSwiftUI
//
//  Created by Din Din on 22/04/2024.
//

import Foundation

struct PlaceholderResponseModelElement: Codable, Identifiable {
    let userID, id: Int
    let title, body: String
    
    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}

typealias PlaceholderResponseModel = [PlaceholderResponseModelElement]
