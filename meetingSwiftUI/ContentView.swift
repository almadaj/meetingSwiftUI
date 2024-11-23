//
//  ContentView.swift
//  meetingSwiftUI
//
//  Created by Juliano Almada on 20/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Form{
                Section{
                    HStack{
                        Image(systemName: "airplane")
                        Text("Airplane Mode")
                    }
                    HStack{
                        Image(systemName: "wifi")
                        Text("Wi-Fi Settings")
                        Spacer()
                        Text("ALMADA 5G").font(.callout).foregroundColor(.gray)
                    }
                    HStack{
                        Image(systemName: "gear")
                        Text("Settings")
                    }
                }
                Section{
                    HStack{
                        Image(systemName: "folder.fill.badge.plus")
                        Text("Notifications")
                    }
                    HStack{
                        Image(systemName: "speaker.3.fill")
                        Text("Sounds & Haptics")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
