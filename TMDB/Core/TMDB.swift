public class TMDB {
    public class func set(apiKey: String, debugMode: Bool = false) {
        TMDB.Constants.apiKey = apiKey
        TMDB.Constants.debugMode = debugMode
    }
    
    class func Log(_ key: String, message: Any) {
        print("[TMDB].[\(key)] \(message)")
    }
}
