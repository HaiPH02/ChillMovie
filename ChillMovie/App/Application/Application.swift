//
//  Application.swift
//  ChillMovie
//
//  Created by Hai Pham on 5/5/25.
//

import Foundation
import Domain

class Application {
    
    static let shared = Application()
    
    init() {
        self.useCaseProvider = UseCaseProvider()
    }
    
    private(set) var useCaseProvider: UseCaseProviderProtocol
}
