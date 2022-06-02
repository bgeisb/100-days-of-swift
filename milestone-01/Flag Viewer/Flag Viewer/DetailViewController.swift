//
//  DetailViewController.swift
//  Flag Viewer
//
//  Created by Benedikt Geisberger on 02.06.22.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    var selectedFlag: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let selectedFlag = selectedFlag else {
            print("No image provided")
            return
        }
        
        title = selectedFlag

        navigationItem.largeTitleDisplayMode = .never
        
        imageView.image = UIImage(named: selectedFlag)
    }
    
    
}
