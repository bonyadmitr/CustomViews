//
//  ResizableCollectionView.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 28.07.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

class ResizableCollectionView: UICollectionView {
    
    override var contentSize: CGSize {
        didSet {
            invalidateIntrinsicContentSize()
        }
    }
    
    override var intrinsicContentSize: CGSize {
        return contentSize
    }
}

// v2
//class ResizableCollectionView2: UICollectionView {
//
//    override var contentSize: CGSize {
//        didSet {
//            invalidateIntrinsicContentSize()
//        }
//    }
//
//    override var intrinsicContentSize: CGSize {
//        layoutIfNeeded()
//        return CGSize(width: UIViewNoIntrinsicMetric, height: contentSize.height)
//    }
//}

// v3
//class DynamicCollectionView: UICollectionView {
//    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        if bounds.size != intrinsicContentSize {
//            invalidateIntrinsicContentSize()
//        }
//    }
//    
//    override var intrinsicContentSize: CGSize {
//        return contentSize
//    }
//}

