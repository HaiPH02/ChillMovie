//
//  View+Extension.swift
//  ChillMovie
//
//  Created by Hai Pham on 3/5/25.
//

import Foundation
import SwiftUI

extension View {
    @ViewBuilder
    func eraseToAnyView() -> AnyView {
        AnyView(self)
    }
    
    @ViewBuilder
    func viewDidLoad(initState: @escaping () async -> Void) -> some View {
        self
            .modifier(ViewDidLoadModifier(initState: initState))
    }
}
