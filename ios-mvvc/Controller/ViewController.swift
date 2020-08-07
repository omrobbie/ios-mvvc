//
//  ViewController.swift
//  ios-mvvc
//
//  Created by omrobbie on 07/08/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var homeView: View!

    override func viewDidLoad() {
        super.viewDidLoad()
        homeView.delegate = self
    }
}

extension ViewController: ViewDelegate {

    func didSelectRowAt(indexPath: IndexPath) {
        let item = homeView.data[indexPath.row]
        print("You are selected: \(item.name) - \(item.title)")
    }
}
