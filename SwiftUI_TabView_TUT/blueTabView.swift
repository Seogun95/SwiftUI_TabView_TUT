//
//  blueTabView.swift
//  SwiftUI_TabView_TUT
//
//  Created by 김선중 on 2021/03/07.
//

import SwiftUI

struct blueTabView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 300, height: 300)
                .foregroundColor(.blue)
            
            Text("\(3)")
                .font(.system(size: 70))
                .foregroundColor(.white)
                .fontWeight(.bold)
        }
    }
}

struct blueTabView_Previews: PreviewProvider {
    static var previews: some View {
        blueTabView()
    }
}
