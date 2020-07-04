public struct TMDBAlternativeTitles: Codable {
    public let id: Int?
    public let titles: [TMDBAlternativeTitle]
}


public struct TMDBAlternativeTitle: Codable {
    public let iso3166_1, title, type: String

    public enum CodingKeys: String, CodingKey {
        case iso3166_1 = "iso_3166_1"
        case title, type
    }
}
