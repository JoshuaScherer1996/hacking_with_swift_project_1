//
//  ViewController.swift
//  Project1
//
//  Created by Joshua Scherer on 10.08.25.
//

import UIKit

class ViewController: UITableViewController {
    
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("mc") {
                // load images
                pictures.append(item)
            }
        }
        
        print(pictures.count)
    }
}

