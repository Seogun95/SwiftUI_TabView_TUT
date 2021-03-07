//
//  ContentView.swift
//  SwiftUI_TabView_TUT
//
//  Created by 김선중 on 2021/03/07.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    var body: some View {
        ZStack(alignment: .topTrailing) {
            TabView(selection: $selection) {
                Text("첫번째 뷰")
                    .font(.system(size: 30))
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("홈으로")
                    }
                    .tag(0)
                
                Text("두번째 뷰")
                    .font(.system(size: 30))
                    .tabItem {
                        Image(systemName: "bookmark.circle.fill")
                        Text("북마크")
                    }
                    .tag(1)
                
                Text("세번째 뷰")
                    .font(.system(size: 30))
                    .tabItem {
                        Image(systemName: "video.circle.fill")
                        Text("비디오")
                    }
                    .tag(2)
            }
            .accentColor(.red)
            .onAppear() {
                UITabBar.appearance().barTintColor = .white
            }
            Button(action : {
                selection = (selection + 1) % 3
            }) {
                Text("다음")
                    .font(.system(.headline))
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding()
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
