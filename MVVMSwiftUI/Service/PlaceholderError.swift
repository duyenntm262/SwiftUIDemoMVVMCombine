//
//  PlaceholderError.swift
//  MVVMSwiftUI
//
//  Created by Din Din on 22/04/2024.
//

import Foundation

enum PlaceholderError: Error {
    case networkError(description: String)
    case parsingError(description: String)
}
