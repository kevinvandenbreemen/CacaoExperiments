import Cacao
import Silica
import Logging

class AppDelegate: UIApplicationDelegate {

    var window: UIWindow?

    let logger = Logger(label: "AppDelegate")

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)

        guard let window = window else {
            logger.error("Failed to create window")
            return false
        }

        window.rootViewController = MainViewController()
        window.makeKeyAndVisible()

        return true
    }

}