public struct TMDBTranslations<T: Codable>: Codable {
    public let id: Int
    public let translations: [TMDBTranslation<T>]
}

public struct TMDBTranslation<T: Codable>: Codable {
    public let iso3166_1, iso639_1, name, englishName: String
    public let data: T

    public enum CodingKeys: String, CodingKey {
        case iso3166_1 = "iso_3166_1"
        case iso639_1 = "iso_639_1"
        case name
        case englishName = "english_name"
        case data
    }
}
