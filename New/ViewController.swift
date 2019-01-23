//
//  ViewController.swift
//  New
//
//  Created by Galo Torres Sevilla on 1/23/19.
//  Copyright © 2019 Galo Torres Sevilla. All rights reserved.
//

import UIKit

protocol SceneDelegate : class {
    func setSquareRec() -> (x: Int, y: Int, width: CGFloat, Height: CGFloat)
}

class ViewController: UIViewController, SceneDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    
    let scene = Scene()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        scene.sceneDelegate = self
        self.view.addSubview(scene)
    }
    
    func setSquareRec() -> (x: Int, y: Int, width: CGFloat, Height: CGFloat) {
        return (Int(self.imageView.bounds.minX), Int(self.imageView.bounds.minY), self.imageView.frame.width, self.imageView.frame.height)
    }

}

class Scene: UIView {
    
    weak var sceneDelegate : SceneDelegate?
    
    var width = 0
    var height = 0
    var x = 0
    var y = 0

    override func layoutSubviews() {
        super.layoutSubviews()
        
        print(sceneDelegate?.setSquareRec())
        
    }
}

