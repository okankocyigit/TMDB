public struct TMDBListResult<T: Codable>: Codable {
    public let id: Int
    public let results: [T]

    public enum CodingKeys: String, CodingKey {
        case results, id
    }
}
