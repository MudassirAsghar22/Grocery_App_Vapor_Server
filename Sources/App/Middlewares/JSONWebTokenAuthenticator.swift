//
//  File.swift
//  
//
//  Created by Mudassir Asghar on 30/09/2024.
//

import Foundation
import Vapor

struct JSONWebAuthenticator: AsyncRequestAuthenticator {

    func authecticate(request: Request) async throws {
        try request.jwt.verify(as AuthPayload.self)
    }
}
