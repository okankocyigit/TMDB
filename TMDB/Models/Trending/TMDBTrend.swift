public struct TMDBTrend: Codable {
    public let media: TMDBTrendMedia?
    public let mediaType: TMDBTrendMediaType
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let singleContainer = try decoder.singleValueContainer()
        mediaType = try container.decode(TMDBTrendMediaType.self, forKey: .mediaType)
        
        switch mediaType {
        case .movie:
            media = .movie(movie: try singleContainer.decode(TMDBMovie.self))
        case .person:
            media = .person(person: try singleContainer.decode(TMDBPerson.self))
        case .tv:
            media = .tv(tv: try singleContainer.decode(TMDBTV.self))
        }
    }
    
    public enum CodingKeys: String, CodingKey {
        case mediaType = "media_type"
    }
}

public enum TMDBTrendMedia {
    case movie(movie: TMDBMovie)
    case tv(tv: TMDBTV)
    case person(person: TMDBPerson)
}

public enum TMDBTrendMediaType: String, Codable {
    case movie, tv, person
}

