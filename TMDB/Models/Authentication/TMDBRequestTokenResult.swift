public struct TMDBRequestTokenResult: Codable {
    public let success: Bool
    public let expiresAt, requestToken: String

    public enum CodingKeys: String, CodingKey {
        case success
        case expiresAt = "expires_at"
        case requestToken = "request_token"
    }
}
