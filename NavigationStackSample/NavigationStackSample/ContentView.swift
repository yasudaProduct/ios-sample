//
//  ContentView.swift
//  NavigationStackSample
//
//  Created by yuta on 2024/05/04.
//

import SwiftUI

struct ContentView: View {
    
    @State var path = NavigationPath()
    
    var body: some View {
        
        NavigationStack(path: $path){
            ZStack{
                VStack {
                    List{
                        Button(action: {
                            path.append(1)
                        }, label: {
                            Text("Second")
                        })
                        
                        Button(action: {
                            path.append(1)
                            path.append(2)
                        }, label: {
                            Text("Second,Third")
                        })
                    }
                }
                .padding()
            }
            .navigationTitle("Home")
            .navigationDestination(for: Int.self) { value in
                if(value == 1){
                    SecondView(path: $path)
                }else if(value == 2){
                    ThirdView(path: $path)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
