
import UIKit

private var xoAssociationKey: UInt8 = 0
private var toViewAssociationKey: UInt8 = 0

extension UIView {
    
    var fluentLayout: FluentLayout! {
        get {
            return objc_getAssociatedObject(self, &xoAssociationKey) as? FluentLayout
        }
        set(newValue) {
            objc_setAssociatedObject(self, &xoAssociationKey, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
        }
    }
    
    func constrain() -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.fluentLayout = FluentLayout()
        return self
    }
    
    func addMarginBottom(to view:UIView, value: CGFloat) -> UIView {
        
        self.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: value).isActive = true
        return self 
    }
    
    func centerHorizontally(in view: UIView) -> UIView {
        
        self.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        return self
    }
    
    func centerVertically(in view: UIView) -> UIView {
        
        fluentLayout.addConstraint(constraint: self.centerYAnchor.constraint(equalTo: view.centerYAnchor))
        return self
    }
    
    func center(in view:UIView) -> UIView  {
        
        fluentLayout.addConstraint(constraint: self.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        fluentLayout.addConstraint(constraint: self.centerYAnchor.constraint(equalTo: view.centerYAnchor))
        
        return self
    }
    
    func setSize(width :CGFloat, height: CGFloat) -> UIView {
        
        fluentLayout.addConstraint(constraint: self.widthAnchor.constraint(equalToConstant: width))
        fluentLayout.addConstraint(constraint: self.heightAnchor.constraint(equalToConstant: height))
        return self
    }
    
    func setWidth(_ width:CGFloat) -> UIView {
        
        fluentLayout.addConstraint(constraint: self.widthAnchor.constraint(equalToConstant: width))
        return self
    }
    
    func setHeight(_ height:CGFloat) -> UIView {
        
        fluentLayout.addConstraint(constraint: self.heightAnchor.constraint(equalToConstant: height))
        return self
    }
    
    func activate() {
        
        for constraint in self.fluentLayout.constraints {
            constraint.isActive = true
        }
    }
    
}
