public struct TMDBImage: Codable {
    public let aspectRatio: Double
    public let filePath: String
    public let height: Int
    public let iso639_1: String?
    public let voteAverage: Double
    public let voteCount, width: Int

    public enum CodingKeys: String, CodingKey {
        case aspectRatio = "aspect_ratio"
        case filePath = "file_path"
        case height
        case iso639_1 = "iso_639_1"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
        case width
    }
}
