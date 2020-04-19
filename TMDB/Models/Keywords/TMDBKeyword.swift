public struct TMDBKeywords: Codable {
    public let id: Int
    public let keywords: [TMDBKeyword]
}

public struct TMDBKeyword: Codable {
    public let id: Int
    public let name: String
}
