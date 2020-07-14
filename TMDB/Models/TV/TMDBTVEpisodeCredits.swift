public struct TMDBTVEpisodeCredits: Codable {
    public let cast: [TMDBCast]
    public let crew: [TMDBCrew]
    public let guestStars: [TMDBCast]
    public let id: Int
    
    public enum CodingKeys: String, CodingKey {
        case cast, crew, guestStars = "guest_stars", id
    }
}
