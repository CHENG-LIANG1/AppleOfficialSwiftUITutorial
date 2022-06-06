//
//  Detail.swift
//  SwiftUITutProj
//
//  Created by 梁程 on 2021/8/2.
//

import SwiftUI

struct Detail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: {
            $0.id == landmark.id
        })!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack (alignment: .leading) {
                
                
                HStack {
                    Text(landmark.name)
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .foregroundColor(.green)
                    
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
                
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            
            
            
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Detail_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        Detail(landmark: modelData.landmarks[0])
            .environmentObject(modelData)
    
    }
}
