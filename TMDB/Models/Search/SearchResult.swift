public struct TMDBSearchResult: Codable {
    public let media: TMDBSearchResultMedia
    public let mediaType: TMDBSearchResultMediaType
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let singleContainer = try decoder.singleValueContainer()
        mediaType = try container.decode(TMDBSearchResultMediaType.self, forKey: .mediaType)
        
        switch mediaType {
        case .movie:
            media = .movie(media: try singleContainer.decode(TMDBMovie.self))
        case .person:
            media = .person(media: try singleContainer.decode(TMDBPerson.self))
        case .tv:
            media = .tv(media: try singleContainer.decode(TMDBTV.self))
        }
    }
    
    public enum CodingKeys: String, CodingKey {
        case mediaType = "media_type"
    }
}

public enum TMDBSearchResultMedia {
    case tv(media: TMDBTV)
    case movie(media: TMDBMovie)
    case person(media: TMDBPerson)
}

public enum TMDBSearchResultMediaType: String, Codable {
    case movie, tv, person
}
