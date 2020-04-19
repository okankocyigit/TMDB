public struct TMDBGenres: Codable {
    public let genres: [TMDBGenre]
}

public struct TMDBGenre: Codable {
    public let id: Int
    public let name: String
}
