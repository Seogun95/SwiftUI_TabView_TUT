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
        NavigationView {
            TabView(selection: $selection) {
                
                List(1...10, id: \.self) { index in
                    NavigationLink(
                        destination: Text("아이템 \(index) 번 의 세부사항"),
                        label: {
                            Text("아이템 \(index)")
                        })
                }
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("홈으로")
                }
                .tag(0)
                
                Text("첫번째 뷰")
                    .font(.system(size: 30))
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("사용자")
                    }
                    .tag(1)
                
                Text("두번째 뷰")
                    .font(.system(size: 30))
                    .tabItem {
                        Image(systemName: "bookmark.circle.fill")
                        Text("북마크")
                    }
                    .tag(2)
                
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
            .navigationTitle("TabView")
            .tabViewStyle(PageTabViewStyle())
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
