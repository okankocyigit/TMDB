public struct TMDBTVCredits: Codable {
    public let cast: [TMDBTVCast]
    public let crew: [TMDBTVCrew]
    public let id: Int?
}

public struct TMDBTVCast: Codable {
    public let character, creditID: String
    public let id: Int
    public let name: String
    public let gender: Int
    public let profilePath: String?
    public let order: Int

    public enum CodingKeys: String, CodingKey {
        case character
        case creditID = "credit_id"
        case id, name, gender
        case profilePath = "profile_path"
        case order
    }
}
