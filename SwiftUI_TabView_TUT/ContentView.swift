//
//  ContentView.swift
//  SwiftUI_TabView_TUT
//
//  Created by 김선중 on 2021/03/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            GreenTapView()
                .tabItem {
                    Image(systemName: "house")
                    Text("홈으로")
                }
            redTabView()
                .tabItem {
                    Image(systemName: "person")
                    Text("사용자")
                }
            
            blueTabView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("장바구니")
                }
                
        }
        .onAppear() {
            UITabBar.appearance().barTintColor = .white
            
        }
        .accentColor(.red)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
