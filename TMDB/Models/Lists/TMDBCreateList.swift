public struct TMDBCreateList: Codable {
    public let statusCode: Int
    public let statusMessage: String
    public let success: Bool
    public let listID: Int

    public enum CodingKeys: String, CodingKey {
        case statusCode = "status_code"
        case statusMessage = "status_message"
        case success
        case listID = "list_id"
    }
}
