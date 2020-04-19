public struct TMDBTVEpisodeCredits: Codable {
    public let cast: [TMDBTVCast]
    public let crew: [TMDBTVCrew]
    public let guestStars: [TMDBTVGuestStar]
    public let id: Int
    
    public enum CodingKeys: String, CodingKey {
        case cast, crew, guestStars = "guest_stars", id
    }
}
