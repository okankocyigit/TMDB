public struct TMDBCredits: Codable {
    public let id: Int?
    public let cast: [TMDBCast]
    public let crew: [TMDBCrew]
}

public struct TMDBCast: Codable {
    public let castID: Int?
    public let character, creditID: String?
    public let gender: Int?
    public let id: Int
    public let name: String
    public let order: Int
    public let profilePath: String?

    public enum CodingKeys: String, CodingKey {
        case castID = "cast_id"
        case character
        case creditID = "credit_id"
        case gender, id, name, order
        case profilePath = "profile_path"
    }
}

public struct TMDBCrew: Codable {
    public let creditID, department: String
    public let gender, id: Int
    public let job, name: String
    public let profilePath: String?

    public enum CodingKeys: String, CodingKey {
        case creditID = "credit_id"
        case department, gender, id, job, name
        case profilePath = "profile_path"
    }
}
