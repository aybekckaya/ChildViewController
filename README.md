# ChildViewController

<p align = "left"> UIViewController extension that enables removing or adding Child View Controller easier </p>

## Usage

```swift
class DetailVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let vc = DetailVC()
        let detailVCContainerView = UIView()
        self.addChildViewController(childController: vc, onView: detailVCContainerView) // Adding Child View Controller
        vc.removeChildViewController() // Remove Child View Controller
    }
}

```

## Installation

### [Swift Package Manager for Apple platforms](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app)

Select Xcode menu `File > Swift Packages > Add Package Dependency` and enter repository URL with GUI.  
```
Repository: https://github.com/aybekckaya/ChildViewController.git
```

### [Swift Package Manager](https://swift.org/package-manager/)

Add the following to the dependencies of your `Package.swift`:
```swift
.package(url: "https://github.com/aybekckaya/ChildViewController.git", from: "1.0.0")
```
