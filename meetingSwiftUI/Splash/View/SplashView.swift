//
//  SplashView.swift
//  meetingSwiftUI
//
//  Created by Juliano Almada on 01/12/24.
//

import SwiftUI

struct SplashView: View {
    @ObservedObject var viewModel: SplashViewModel
    
    var error: String? // Adicionado para permitir a exibição de erros
    
    var body: some View {
        Group{
            switch viewModel.uiState {
            case .loading:
                // Utilize qualquer uma das abordagens para carregar a view
                LoadingView()
            case .goToSignInScreen:
                Text("Carregar Tela de Login")
            case .goToHomeScreen:
                Text("Carregar Home")
            case .error(let msg):
                loadingView(error: msg)
            }
        }.onAppear(perform: viewModel.onAppear)
    }
}

// Declarando componente para a tela de carregamento
struct LoadingView: View { 
    var body: some View {
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .background(Color.white)
                .ignoresSafeArea()
        }
    }
}

// Função em extensão para criar a loading view com tratamento de erro
extension SplashView {
    func loadingView(error: String? = nil) -> some View {
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .background(Color.white)
                .ignoresSafeArea()
            
            // Exibe alerta se houver um erro
            if let error = error {
                Text("")
                    .alert(isPresented: .constant(true)) {
                        Alert(
                            title: Text("Habit"),
                            message: Text(error),
                            dismissButton: .default(Text("Ok"))
                        )
                    }
            }
        }
    }
}

// Preview
struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = SplashViewModel()
        SplashView(viewModel: viewModel)
    }
}
