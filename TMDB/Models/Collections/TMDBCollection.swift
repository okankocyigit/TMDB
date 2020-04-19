public struct TMDBCollectionDetail: Codable {
    public let id: Int
    public let name: String
    public let overview, posterPath, backdropPath: String?
    public let parts: [TMDBMovie]

    public enum CodingKeys: String, CodingKey {
        case id, name, overview
        case posterPath = "poster_path"
        case backdropPath = "backdrop_path"
        case parts
    }
}

public struct TMDBCollection: Codable {
    public let id: Int
    public let name: String
    public let overview, posterPath, backdropPath: String?

    public enum CodingKeys: String, CodingKey {
        case id, name, overview
        case posterPath = "poster_path"
        case backdropPath = "backdrop_path"
    }
}
