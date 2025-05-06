//
//  BaseViewModel.swift
//  ChillMovie
//
//  Created by Hai Pham on 3/5/25.
//

import Foundation
import Combine

class BaseViewModel<Output>: ObservableObject {
    
    init(state: Output) {
        self.state = state
    }
    
    @Published
    var state: Output
    
    var cancellables = Set<AnyCancellable>()
}
