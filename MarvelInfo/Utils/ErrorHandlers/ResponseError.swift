//
//  ResponseError.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 06/11/24.
//

import Foundation

enum ResponseError: String, Error {
    case invalidUsername = "This is an invalid request. Please try again!"
    case unableToComplete = "Unable to complete your request. Please check your internet connection!"
    case invalidResponse = "Invalid response from the server. Please try again!"
    case invalidData = "The data received from the server was invalid. Please try again."
}
