public struct TMDBCountry: Codable {
    public let iso3166_1, englishName: String

    public enum CodingKeys: String, CodingKey {
        case iso3166_1 = "iso_3166_1"
        case englishName = "english_name"
    }
}
