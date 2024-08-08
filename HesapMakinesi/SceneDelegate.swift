import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        
        // Launch Screen'i 2 saniye boyunca göstermek için uyuma ekleyin
        Thread.sleep(forTimeInterval: 2.0)
        
        guard let _ = (scene as? UIWindowScene) else { return }
    }
}
