//
//  CameraView.swift
//  ObjectRecognition-SwiftUI
//
//  Created by Daniel Roong on 07/08/22.
//

import SwiftUI

struct CameraView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all, edges: .all)
            
            VStack {
                Spacer()
                
                HStack {
                    Button {
                        
                    } label: {
                        CameraInterface()
                            .centerHelper()
                    }
                }
            }
        }
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
