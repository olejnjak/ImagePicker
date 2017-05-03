//
//  UIImagePickerControllerDelegate.swift
//  Pods
//
//  Created by Jakub Olejník on 04/05/2017.
//
//

import UIKit

internal class ImagePickerDelegateProxy: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    private let handler: ImagePickerHandler
    
    // MARK: Initializers
    
    init(handler: @escaping ImagePickerHandler) {
        self.handler = handler
        super.init()
    }
    
    // MARK: UIImagePickerController delegate
    
    internal func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            handler(image)
        }
        picker.dismiss(animated: true, completion: nil)
    }
}
