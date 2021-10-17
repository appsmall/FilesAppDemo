//
//  ViewController.swift
//  FileAppDemo
//
//  Created by Rahul Developer on 12/10/21.
//

import UIKit

class ViewController: UIViewController, UIDocumentPickerDelegate {
    
    @IBAction func openDoc(_ sender: Any) {
        let controller = UIDocumentPickerViewController(documentTypes: ["public.text", "public.doc", "public.mp3"], in: .import)
        controller.delegate = self
        controller.allowsMultipleSelection = false
        present(controller, animated: true, completion: nil)
    }
    
    func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
        print("didPickDocumentsAt")
        print(urls)
        
        if let url = urls.first {
            do {
                let data = try Data(contentsOf: url)
                print(data.count)
            } catch {
                print(error)
            }
        }
    }

    func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentAt url: URL) {
        print("didPickDocumentAt")
        print(url)
    }
}
