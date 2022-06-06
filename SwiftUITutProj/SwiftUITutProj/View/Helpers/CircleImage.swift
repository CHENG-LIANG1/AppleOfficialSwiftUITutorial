//
//  CircleImage.swift
//  SwiftUITutProj
//
//  Created by 梁程 on 2021/8/2.
//

import SwiftUI

struct CircleImage: View {
    
    
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
