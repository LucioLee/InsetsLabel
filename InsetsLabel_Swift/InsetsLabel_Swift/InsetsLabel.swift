//
//  InsetsLabel.swift
//  InsetsLabel
//
//  Created by LucioLee on 16/3/9.
//
//

import UIKit

@IBDesignable open class InsetsLabel: UILabel {
    
    open var insets = UIEdgeInsets.zero {
        didSet {
            self.invalidateIntrinsicContentSize()
        }
    }
    
    @IBInspectable open var topInset: CGFloat {
        set {
            insets.top = newValue
        }
        get {
            return insets.top
        }
    }
    
    @IBInspectable open var leftInset: CGFloat {
        set {
            insets.left = newValue
        }
        get {
            return insets.left
        }
    }
    
    @IBInspectable open var bottomInset: CGFloat {
        set {
            insets.bottom = newValue
        }
        get {
            return insets.bottom
        }
    }
    
    @IBInspectable open var rightInset: CGFloat {
        set {
            insets.right = newValue
        }
        get {
            return insets.right
        }
    }
    
    override open var intrinsicContentSize: CGSize {
        get {
            var size = super.intrinsicContentSize
            size.width  += insets.left + insets.right
            size.height += insets.top + insets.bottom
            return size
        }
    }
    
    convenience public init(insets: UIEdgeInsets) {
        self.init()
        self.insets = insets;
    }
    
    convenience public init(frame: CGRect, insets: UIEdgeInsets) {
        self.init(frame:frame)
        self.insets = insets
    }
    
    override open func textRect(forBounds bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
        return super.textRect(forBounds: bounds.inset(by: insets), limitedToNumberOfLines: numberOfLines)
    }
    
    override open func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: insets))
    }
}
