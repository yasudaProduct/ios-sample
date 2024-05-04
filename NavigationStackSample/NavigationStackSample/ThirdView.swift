//
//  Third.swift
//  NavigationStackSample
//
//  Created by yuta on 2024/05/04.
//

import SwiftUI

struct ThirdView: View {
    
    @Binding var path: NavigationPath
    
    var body: some View {
        
        ZStack{
            HStack{
                Text("ThirdView")
                
                Button {
                    path.removeLast(path.count)
                } label: {
                    Text("最初に戻る")
                }
            }
        }
        .navigationTitle("ThirdView")
        
    }
}

//#Preview {
//    ThirdView()
//}
