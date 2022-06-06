//
//  ContentView.swift
//  SwiftUITutProj
//
//  Created by 梁程 on 2021/8/2.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var modelData = ModelData()
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
