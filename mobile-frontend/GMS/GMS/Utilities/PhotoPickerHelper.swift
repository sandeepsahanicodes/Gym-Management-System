//
//  PhotoPickerHelper.swift
//  GMS
//
//  Created by Sandeep Sahani on 07/02/25.
//



import UIKit
import PhotosUI

protocol PhotoPickerDelegate: AnyObject {
    func didSelectImage(_ image: UIImage)
}
/// Presents the photo picker view controller.
class PhotoPickerHelper: NSObject, PHPickerViewControllerDelegate {
    
    weak var delegate: PhotoPickerDelegate?
    /// Presents the photo picker view controller from the mention view controller.
    func presentPhotoPicker(from viewController: UIViewController) {
        var configuration = PHPickerConfiguration()
        configuration.selectionLimit = 1
        let phPickerVC = PHPickerViewController(configuration: configuration)
        phPickerVC.delegate = self
        viewController.present(phPickerVC, animated: true)
    }
    
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        picker.dismiss(animated: true)
        guard let itemProvider = results.first?.itemProvider,
                      itemProvider.canLoadObject(ofClass: UIImage.self) else { return }
        
        itemProvider.loadObject(ofClass: UIImage.self) { object, error in
            if let image = object as? UIImage {
                DispatchQueue.main.async {
                    self.delegate?.didSelectImage(image)
                }
            }
        }
    }
}

