import UIKit
import ACPCore
import ACPAnalytics
import ACPUserProfile
import AdSupport

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        ACPCore.setLogLevel(.verbose)
        ACPCore.configure(withAppId: "db150ae210e9/9de8fbbe8941/launch-3b8201ffa5b2-development")
        ACPIdentity.registerExtension()
        ACPLifecycle.registerExtension()
        ACPSignal.registerExtension()
        ACPUserProfile.registerExtension()
        ACPCore.start {
            ACPCore.lifecycleStart(["state":"appStart"])
        }
        ACPCore.setAdvertisingIdentifier( ASIdentifierManager.shared().advertisingIdentifier.uuidString )
        ACPIdentity.syncIdentifier("x_device_id", identifier: "gil", authentication: ACPMobileVisitorAuthenticationState.authenticated)
        return true
    }


    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }


}

