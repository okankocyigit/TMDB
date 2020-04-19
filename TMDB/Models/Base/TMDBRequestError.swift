public struct TMDBRequestError: Codable {
    public let errors: [String]
    public enum CodingKeys: String, CodingKey {
        case errors = "errors"
    }
}
