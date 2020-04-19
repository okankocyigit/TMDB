public struct TMDBResponse: Codable {
    public let statusCode: Int
    public let statusMessage: String

    public enum CodingKeys: String, CodingKey {
        case statusCode = "status_code"
        case statusMessage = "status_message"
    }
}
