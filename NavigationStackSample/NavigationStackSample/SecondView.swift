//
//  SecondView.swift
//  NavigationStackSample
//
//  Created by yuta on 2024/05/04.
//

import SwiftUI

struct SecondView: View {
    
    @Binding var path: NavigationPath
    
    var body: some View {
        
        ZStack{
            Text("SecondView")
            
            List{
                Button {
                    path.append(2)
                } label: {
                    Text("ThirdView")
                }
            }
            .navigationTitle("SecondView")
            
        }
    }
}

//#Preview {
//    @State var path = NavigationPath()
//    SecondView(path: $path)
//}
