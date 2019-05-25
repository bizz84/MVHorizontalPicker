/*
MVHorizontalPicker - Copyright (c) 2016 Andrea Bizzotto bizz84@gmail.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import UIKit

extension UIView {
    
    func anchorToSuperview() {
        
        if let superview = self.superview {
            self.translatesAutoresizingMaskIntoConstraints = false
            
            superview.addConstraints([
                makeEqualityConstraint(attribute: .left, toView: superview),
                makeEqualityConstraint(attribute: .top, toView: superview),
                makeEqualityConstraint(attribute: .right, toView: superview),
                makeEqualityConstraint(attribute: .bottom, toView: superview)
                ])
        }
    }
    func makeEqualityConstraint(attribute: NSLayoutConstraint.Attribute, toView view: UIView) -> NSLayoutConstraint {
        
        return makeConstraint(attribute: attribute, toView: view, constant: 0)
    }
    func makeConstraint(attribute: NSLayoutConstraint.Attribute, toView view: UIView?, constant: CGFloat) -> NSLayoutConstraint {
        
        return NSLayoutConstraint(item: self, attribute: attribute, relatedBy: .equal,
            toItem: view, attribute: attribute, multiplier: 1, constant: constant)
    }
}
