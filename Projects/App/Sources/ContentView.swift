//
//  ContentView.swift
//  ProjectDescriptionHelpers
//
//  Created by dgsw30 on 1/8/25.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var contentVM = ContentViewModel()
    var body: some View {
        VStack {
            Button  {
                contentVM.postPosts()
            } label: {
                Text("클릭")
            }
        }
    }
}

#Preview {
    ContentView()
}
