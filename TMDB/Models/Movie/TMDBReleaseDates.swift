public struct TMDBReleaseDates: Codable {
    public let iso3166_1: String
    public let releaseDates: [TMDBReleaseDate]

    public enum CodingKeys: String, CodingKey {
        case iso3166_1 = "iso_3166_1"
        case releaseDates = "release_dates"
    }
}

public struct TMDBReleaseDate: Codable {
    public let certification: String?
    public let iso639_1: String
    public let note: String?
    public let releaseDate: String
    public let type: TMDBReleaseType

    public enum CodingKeys: String, CodingKey {
        case certification
        case iso639_1 = "iso_639_1"
        case note
        case releaseDate = "release_date"
        case type
    }
}

public enum TMDBReleaseType: Int, Codable {
    case premiere = 1
    case theatrical = 2
    case theatricalLimited = 3
    case digital = 4
    case physical = 5
    case tv = 6

}
