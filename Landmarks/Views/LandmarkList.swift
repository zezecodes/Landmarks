//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Aaron Djangmah on 24/03/2024.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }.navigationTitle("Landmarks")
        }
    detail: {
            Text("Select a landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
