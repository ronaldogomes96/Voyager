//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  Provides supporting functions for setting up a live view.
//

import UIKit
import PlaygroundSupport

/// Instantiates a new instance of a live view.
///
/// By default, this loads an instance of `LiveViewController` from `LiveView.storyboard`.
public func instantiateLiveView(_ controller: Controller) -> PlaygroundLiveViewable {
    let storyboard = UIStoryboard(name: "LiveView", bundle: nil)

    guard let viewController = storyboard.instantiateInitialViewController() else {
        fatalError("LiveView.storyboard does not have an initial scene; please set one or update this function")
    }
    
    var liveViewController: LiveView
    
    switch controller {
    case .introduction:
        liveViewController = IntroductionController()
    case .firstPage:
        liveViewController = FirstPageController(imageName: "image1")
    }

    return liveViewController
}


public class LiveView: UIViewController {
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
}
