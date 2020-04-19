public struct TMDBConfiguration: Codable {
    public let images: TMDBConfigurationImages
    public let changeKeys: [String]

    public enum CodingKeys: String, CodingKey {
        case images
        case changeKeys = "change_keys"
    }
}
public struct TMDBConfigurationImages: Codable {
    public let baseURL: String
    public let secureBaseURL: String
    public let backdropSizes, logoSizes, posterSizes, profileSizes: [String]
    public let stillSizes: [String]

    public enum CodingKeys: String, CodingKey {
        case baseURL = "base_url"
        case secureBaseURL = "secure_base_url"
        case backdropSizes = "backdrop_sizes"
        case logoSizes = "logo_sizes"
        case posterSizes = "poster_sizes"
        case profileSizes = "profile_sizes"
        case stillSizes = "still_sizes"
    }
}
