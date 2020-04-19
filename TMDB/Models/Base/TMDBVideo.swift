public struct TMDBVideo: Codable {
    public let id, iso639_1, iso3166_1, key: String
    public let name, site: String
    public let size: Int
    public let type: String

    public enum CodingKeys: String, CodingKey {
        case id
        case iso639_1 = "iso_639_1"
        case iso3166_1 = "iso_3166_1"
        case key, name, site, size, type
    }
}
