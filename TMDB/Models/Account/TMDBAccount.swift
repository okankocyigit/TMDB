public struct TMDBAccount: Codable {
    public let avatar: TMDBAccountAvatar
    public let id: Int
    public let iso639_1, iso3166_1, name: String
    public let includeAdult: Bool
    public let username: String

    public enum CodingKeys: String, CodingKey {
        case avatar, id
        case iso639_1 = "iso_639_1"
        case iso3166_1 = "iso_3166_1"
        case name
        case includeAdult = "include_adult"
        case username
    }
}

public struct TMDBAccountAvatar: Codable {
    public let gravatar: TMDBAccountGravatar
}

public struct TMDBAccountGravatar: Codable {
    public let hash: String
}
