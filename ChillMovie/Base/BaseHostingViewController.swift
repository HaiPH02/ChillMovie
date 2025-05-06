//
//  BaseHostingViewController.swift
//  ChillMovie
//
//  Created by Hai Pham on 3/5/25.
//

import Foundation
import SwiftUI

class BaseHostingViewController<Content>: UIHostingController<AnyView> where Content: View {
    init(shouldShowNavigationBar: Bool = false,
         rootView: Content) {
        super.init(rootView: AnyView(rootView.navigationBarHidden(!shouldShowNavigationBar)))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
