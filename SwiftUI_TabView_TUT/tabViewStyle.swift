//
//  tabViewStyle.swift
//  SwiftUI_TabView_TUT
//
//  Created by 김선중 on 2021/04/19.
//

import SwiftUI

struct tabViewStyle: View {
    var body: some View {
        TabView{
            Color.red
            Color.blue
            Color.green
            Color.yellow
        }
        .tabViewStyle(PageTabViewStyle())
        // .never 로 하면 배경 안보이고 .always 로 하면 인디케이터 배경 보입니다.
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct tabViewStyle_Previews: PreviewProvider {
    static var previews: some View {
        tabViewStyle()
    }
}
