//
//  ViewController.swift
//  Animations
//
//  Created by Omar Nieto on 16/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    let lottieAnimation = LoaderView()
    let animFiles = ["media_luna", "cup_of_coffee", "not_signal_no_internet_access"]
    let animNamesItems = ["Media Luna", "Taza de café", "Sin señal"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        let fish = LoaderView()
        fish.frame.size = CGSize(width: 400, height: 400)
        fish.center = self.view.center
        view.addSubview(fish)
        view.backgroundColor = .cyan
         */
        
        lottieAnimation.frame.size = CGSize(width: 400, height: 400)
        lottieAnimation.center = self.view.center
        view.addSubview(lottieAnimation)
        view.backgroundColor = .white
        
        let segmentedControl = UISegmentedControl(items: animNamesItems)
        segmentedControl.frame = CGRect(x: 10, y: 60, width: self.view.bounds.width, height: 30)
        segmentedControl.selectedSegmentIndex = UISegmentedControl.noSegment
        segmentedControl.addTarget(self, action: #selector(segmentedControlChanged(_:)), for: .valueChanged)
        self.view.addSubview(segmentedControl)
    }
    
    @objc func segmentedControlChanged(_ segementedControl: UISegmentedControl){
        
        let indexSelected = segementedControl.selectedSegmentIndex
        lottieAnimation.setFileName(name: animFiles[indexSelected])
    }


}

