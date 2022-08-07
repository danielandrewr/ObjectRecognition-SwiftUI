//
//  CameraInterface.swift
//  ObjectRecognition-SwiftUI
//
//  Created by Daniel Roong on 07/08/22.
//

import SwiftUI

struct CameraInterface: View {
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.white, lineWidth: 3)
                .frame(width: 60, height: 60)
            
            Circle()
                .frame(width: 55, height: 55)
                .foregroundColor(Color.white)
        }
    }
}
