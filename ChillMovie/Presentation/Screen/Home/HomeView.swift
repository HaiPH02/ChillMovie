//
//  HomeView.swift
//  ChillMovie
//
//  Created by Hai Pham on 3/5/25.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject
    var viewModel: HomeViewModel
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .viewDidLoad {
                await viewModel.fetchDataFromApi()
            }
    }
}
