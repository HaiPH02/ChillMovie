//
//  BaseViewController.swift
//  ChillMovie
//
//  Created by Hai Pham on 3/5/25.
//

import Foundation
import SwiftUI

class BaseViewController<Content: View>: BaseHostingViewController<AnyView> {
    init(rootView: Content) {
        let view = rootView
            .eraseToAnyView()
        super.init(shouldShowNavigationBar: false, rootView: view)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
