public struct TMDBGuestSessionResult: Codable {
    public let success: Bool
    public let guestSessionID, expiresAt: String

    public enum CodingKeys: String, CodingKey {
        case success
        case guestSessionID = "guest_session_id"
        case expiresAt = "expires_at"
    }
}
