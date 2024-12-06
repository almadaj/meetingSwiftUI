//
//  SplashViewModel.swift
//  meetingSwiftUI
//
//  Created by Juliano Almada on 05/12/24.
//

import SwiftUI

class SplashViewModel: ObservableObject{
    @Published var uiState: SplashUIState = .loading
    
    func onAppear(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.uiState = .goToSignInScreen
            }
    }
}
