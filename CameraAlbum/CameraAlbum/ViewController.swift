//
//  ViewController.swift
//  CameraAlbum
//
//  Created by tomoya tanaka on 2020/09/13.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import UIKit
import Photos

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var backImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        PHPhotoLibrary.requestAuthorization {
            (status) in
            
            switch(status) {
            case .authorized:
                print("許可されています。")
                
            case .denied:
                print("拒否された")
                
            case .notDetermined:
                print("not determined")
                
            case .restricted:
                print("restricted")
            }
        }
    }
    
    @IBAction func openCamera(_ sender: Any) {
        let sourceType = UIImagePickerController.SourceType.camera
        // カメラが利用可能かチェック
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            // 変数化
            let cameraPicker = UIImagePickerController()
            cameraPicker.sourceType = sourceType
            cameraPicker.delegate = self
            cameraPicker.allowsEditing = true
            present(cameraPicker, animated: true, completion: nil)
        } else {
            print("エラー")
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func oepnAlbum(_ sender: Any) {
        let sourceType = UIImagePickerController.SourceType.photoLibrary
        // カメラが利用可能かチェック
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            // 変数化
            let cameraPicker = UIImagePickerController()
            cameraPicker.sourceType = sourceType
            cameraPicker.delegate = self
            cameraPicker.allowsEditing = true
            present(cameraPicker, animated: true, completion: nil)
        } else {
            print("エラー")
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let pickedImage = info[.editedImage] as? UIImage {
            backImageView.image = pickedImage
            UIImageWriteToSavedPhotosAlbum(pickedImage, self, nil, nil)
            picker.dismiss(animated: true, completion: nil)
        }
        
    }
    
    // シェアするための処理
    @IBAction func share(_ sender: Any) {
        let text = "シェア"
        let image = backImageView.image?.jpegData(compressionQuality: 0.2)
        let items = [text, image] as [Any]
        
        let activityVC = UIActivityViewController(activityItems: items, applicationActivities: nil)
        present(activityVC, animated: true, completion: nil)
    }
    
    
}

