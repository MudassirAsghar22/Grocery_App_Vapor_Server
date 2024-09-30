//
//  File.swift
//  
//
//  Created by Mudassir Asghar on 25/09/2024.
//

import Foundation

struct APIErrorResponse: Decodable {

    let status: Status
}

struct Status: Decodable {

    let errorCode: Int
    let errorMessage: String

    private enum CodingKeys: String, CodingKey {
        case errorCode = "error_code"
        case errorMessage = "error_message"
    }
}

