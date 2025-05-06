//
//  HomeViewModel.swift
//  ChillMovie
//
//  Created by Hai Pham on 3/5/25.
//

import Foundation
import Domain

class HomeViewModel: BaseViewModel<HomeViewModel.State> {
    
    init(navigator: HomeNavigatorProtocol, getGenresUseCase: GetGenresUseCase) {
        self.navigator = navigator
        self.getGenresUseCase = getGenresUseCase
        super.init(state: State())
    }
    
    private let navigator: HomeNavigatorProtocol
    private let getGenresUseCase: GetGenresUseCase
    
    func fetchDataFromApi() async {
        do {
            let movie = try await getGenresUseCase.run(input: "vietnamese")
        } catch {
            print("error")
        }
    }
    
    struct State {
        var loadingStatus: Bool = false
    }
}
