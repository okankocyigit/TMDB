public struct TMDBTVEpisode: Codable {
    public let airDate: String
    public let episodeNumber, id: Int
    public let name, overview, productionCode: String
    public let seasonNumber: Int
    public let showID: Int?
    public let stillPath: String?
    public let voteAverage: Double
    public let voteCount: Int
    public let crew: [TMDBTVCrew]?
    public let guestStars: [TMDBTVGuestStar]?
    public let rating: Double?

    public enum CodingKeys: String, CodingKey {
        case airDate = "air_date"
        case episodeNumber = "episode_number"
        case id, name, overview
        case productionCode = "production_code"
        case seasonNumber = "season_number"
        case showID = "show_id"
        case stillPath = "still_path"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
        case crew
        case guestStars = "guest_stars"
        case rating
    }
}

public struct TMDBTVCrew: Codable {
    public let id: Int
    public let creditID, name: String
    public let department: String
    public let job: String
    public let gender: Int?
    public let profilePath: String?

    public enum CodingKeys: String, CodingKey {
        case id
        case creditID = "credit_id"
        case name, department, job, gender
        case profilePath = "profile_path"
    }
}


public struct TMDBTVGuestStar: Codable {
    public let id: Int
    public let name, creditID, character: String
    public let order, gender: Int
    public let profilePath: String?

    public enum CodingKeys: String, CodingKey {
        case id, name
        case creditID = "credit_id"
        case character, order, gender
        case profilePath = "profile_path"
    }
}
