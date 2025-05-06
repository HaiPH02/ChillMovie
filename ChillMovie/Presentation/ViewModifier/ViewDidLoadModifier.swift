//
//  ViewDidLoadModifier.swift
//  ChillMovie
//
//  Created by Hai Pham on 5/5/25.
//

import Foundation
import SwiftUI

struct ViewDidLoadModifier: ViewModifier {
    @State
    private var isFirstTime = true
    
    let initState: ()  async -> Void
    
    func body(content: Content) -> some View {
        content
            .onAppear {
                if isFirstTime {
                    isFirstTime = false
                    Task {
                        await initState()
                    }
                }
            }
    }
}
