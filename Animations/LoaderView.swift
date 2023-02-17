//
//  LoaderView.swift
//  Animations
//
//  Created by Omar Nieto on 16/02/23.
//

//import Foundation
import UIKit
import Lottie

public class LoaderView : UIView {
    private var fileName : String = "fish"
    var animationView: LottieAnimationView? = nil
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func setFileName(name: String){
        self.fileName = name
        animationView?.stop()
        commonInit()
    }
    
    
    func commonInit() {
        
        if self.subviews.count == 0 {
            animationView = LottieAnimationView()
            self.addSubview(animationView!)
        }
    
        animationView?.animation = LottieAnimation.named(fileName)
        animationView?.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        animationView?.center = self.center
        animationView?.animationSpeed = 0.2
        animationView?.contentMode = .scaleToFill
        //print("Numero de sibview: \(self.subviews.count)")
       
        animationView?.play()
        animationView?.translatesAutoresizingMaskIntoConstraints = false
        animationView?.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        animationView?.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        animationView?.widthAnchor.constraint(equalToConstant: 320).isActive = true
        animationView?.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
    }
    
    
    func updateView() {
        animationView = LottieAnimationView(name: fileName)
        animationView?.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        animationView?.center = self.center
        animationView?.animationSpeed = 0.5
        animationView?.contentMode = .scaleToFill
        self.addSubview(animationView!)
        animationView?.play()
        animationView?.translatesAutoresizingMaskIntoConstraints = false
        animationView?.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        animationView?.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        animationView?.widthAnchor.constraint(equalToConstant: 400).isActive = true
        animationView?.heightAnchor.constraint(equalToConstant: 400).isActive = true
        
    }
}
