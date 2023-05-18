import HunspellSDK

public class HunspellManager {
    var manager: HunspellSDKManager
    public init() {
        manager = HunspellSDKManager()
        manager.updateLanguage("en_US")
    }
    
    public func fetchSuggestions(str: String) -> [String] {
        let suggestions = manager.getSuggestions(for: str)
        return suggestions
    }
}
