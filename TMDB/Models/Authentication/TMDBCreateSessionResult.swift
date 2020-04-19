public struct TMDBCreateSessionResult: Codable {
    public let success: Bool
    public let sessionID: String

    public enum CodingKeys: String, CodingKey {
        case success
        case sessionID = "session_id"
    }
}
