//
//  AVManager.swift
//  ObjectRecognition-SwiftUI
//
//  Created by Daniel Roong on 07/08/22.
//

import Foundation
import AVFoundation

class AVManager {
    @Published var avSession = AVCaptureSession()
    
    func setupAVSession() {
        self.avSession.beginConfiguration()
        
        guard let captureDevice = AVCaptureDevice.default(for: .video) else { return }
        
        guard let captureInput = try? AVCaptureDeviceInput(device: captureDevice) else { return }
        
        avSession.addInput(captureInput)
        
        avSession.startRunning()
    }
    
    private func checkForAuthorization() {
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .authorized:
            setupAVSession()
            return
        case .notDetermined:
            requestForAuthorization()
            return
        case .denied:
            // Add error handling for denied access
            return
        default:
            return
        }
    }
    
    private func requestForAuthorization() {
        AVCaptureDevice.requestAccess(for: .video) { (isAllowed) in
            if isAllowed {
                self.setupAVSession()
            }
        }
    }
}
