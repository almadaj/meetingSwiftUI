//
//  SplashView.swift
//  meetingSwiftUI
//
//  Created by Juliano Almada on 01/12/24.
//

import SwiftUI

struct SplashView: View {
    @State var state: SplashUIState = .goToHomeScreen
    var body: some View {
        switch state{
        case .loading:
            //1
            LoadingView()
            //2
            loading
            //3
            loadingView()
        case .goToSignInScreen:
            Text("Carregar Tela de Login")
        case .goToHomeScreen:
            Text("Carregar Home")
        case .error(let msg):
            Text("Carregar Erro: \(msg)")
        }
    }
}
// 1. Declarando componente
struct LoadingView: View {
    var body: some View{
        ZStack{
            Image("logo").resizable().scaledToFit().frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .background(Color.white)
                .ignoresSafeArea()
        }
    }
}

// 2. Criando extensão
extension SplashView{
    var loading: some View{
        ZStack{
            Image("logo").resizable().scaledToFit().frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .background(Color.white)
                .ignoresSafeArea()
        }
    }
}

// 3. Função em extensão
extension SplashView{
    func loadingView() -> some View {
        ZStack{
            Image("logo").resizable().scaledToFit().frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .background(Color.white)
                .ignoresSafeArea()
        }
    }
}


struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(state: .loading)
    }
}
