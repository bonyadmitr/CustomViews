//
//  AnimatedLabel.swift
//  CustomViews
//
//  Created by Bondar Yaroslav on 16.12.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

open class AnimatedLabel: UILabel {
    open override var text: String? {
        didSet {
            pushTransition(duration: 0.3)
        }
    }
}

extension UIView {
    
    struct TransitionType {
        private init() {}
        static let fade = kCATransitionFade
        static let push = kCATransitionPush
        static let moveIn = kCATransitionMoveIn
        static let reveal = kCATransitionReveal
    }
    
    struct TransitionSubtype {
        private init() {}
        static let right = kCATransitionFromRight
        static let left = kCATransitionFromLeft
        static let top = kCATransitionFromTop
        static let bottom = kCATransitionFromBottom
    }
    
    open func pushTransition(duration: CFTimeInterval) {
        let animation = CATransition()
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        animation.type = TransitionType.push
        animation.subtype = TransitionSubtype.top
        animation.duration = duration
        layer.add(animation, forKey: TransitionType.push)
    }
}
