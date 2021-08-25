//
//  PhotoAlert.swift
//  ProjectCalendarPlanner
//
//  Created by Alexander Sobolev on 25.08.2021.
//

import UIKit

extension UIViewController {
    
    
    func alertPhoto(completionHeandler: @escaping (UIImagePickerController.SourceType) -> Void) {
        
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let cam = UIAlertAction(title: "Cam", style: .default) { _ in
            let cam = UIImagePickerController.SourceType.camera
            completionHeandler(cam)
        }
        
        let photoLibrary = UIAlertAction(title: "Photo Library", style: .default) { _ in
            let photoLibrary = UIImagePickerController.SourceType.photoLibrary
            completionHeandler(photoLibrary)
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .default)
        
        alertController.addAction(cam)
        alertController.addAction(photoLibrary)
        alertController.addAction(cancel)
        
        present(alertController, animated: true)
    }
}
