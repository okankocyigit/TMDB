public struct TMDBLanguage: Codable {
    public let iso639_1, englishName, name: String

    public enum CodingKeys: String, CodingKey {
        case iso639_1 = "iso_639_1"
        case englishName = "english_name"
        case name
    }
}
