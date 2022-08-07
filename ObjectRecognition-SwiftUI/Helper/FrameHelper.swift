//
//  FrameHelper.swift
//  ObjectRecognition-SwiftUI
//
//  Created by Daniel Roong on 07/08/22.
//

import SwiftUI

extension View {
    func centerHelper() -> some View {
        self.frame(maxWidth: .infinity, alignment: .center)
    }
    
    func leadingHelper() -> some View {
        self.frame(maxWidth: .infinity, alignment: .leading)
    }
    
    func trailingHelper() -> some View {
        self.frame(maxWidth: .infinity, alignment: .trailing)
    }
}
