import SwiftUI
import DebugSwift

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
        _: UIApplication,
        didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]? = nil
    ) -> Bool {
        // Remove comment below to remove specific features and comment DebugSwift.setup() not to double trigger.
        // DebugSwift.setup(hideFeatures: [.interface, .app, .resources, .performance])
        DebugSwift
            .setup()
//            .show()
 
        // To fix alamorife `uploadProgress`
//        DebugSwift.Network.delegate = self

        return true
    }

//    func additionalViewControllers() -> [UIViewController] {
//        let viewController = UITableViewController()
//        viewController.title = "PURE"
//        return [viewController]
//    }
}

extension UIWindow {
    open override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        super.motionEnded(motion, with: event)
        
        if motion == .motionShake {
            DebugSwift.toggle()
        }
    }
}
