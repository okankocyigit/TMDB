public struct TMDBPersonCredits: Codable {
    public let cast: [TMDBPersonCreditCast]
    public let crew: [TMDBPersonCreditCrew]
    public let id: Int
}

public struct TMDBPersonCreditCast: Codable {
    public let media: TMDBPersonCreditCastMedia
    public let mediaType: TMDBPersonCreditCastMediaType
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let singleContainer = try decoder.singleValueContainer()
        mediaType = try container.decode(TMDBPersonCreditCastMediaType.self, forKey: .mediaType)
        
        switch mediaType {
        case .movie:
            media = .movie(credit: try singleContainer.decode(TMDBPersonMovieCreditsCast.self))
        case .tv:
            media = .tv(credit: try singleContainer.decode(TMDBPersonTVCreditsCast.self))
        }
    }
    
    public enum CodingKeys: String, CodingKey {
        case mediaType = "media_type"
    }
}

public enum TMDBPersonCreditCastMedia {
    case movie(credit: TMDBPersonMovieCreditsCast)
    case tv(credit: TMDBPersonTVCreditsCast)
}

public enum TMDBPersonCreditCastMediaType: String, Codable {
    case movie, tv
}

public struct TMDBPersonCreditCrew: Codable {
    public let media: TMDBPersonCreditCrewMedia
    public let mediaType: TMDBPersonCreditCrewMediaType
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let singleContainer = try decoder.singleValueContainer()
        mediaType = try container.decode(TMDBPersonCreditCrewMediaType.self, forKey: .mediaType)
        
        switch mediaType {
        case .movie:
            media = .movie(credit: try singleContainer.decode(TMDBPersonMovieCreditsCrew.self))
        case .tv:
            media = .tv(credit: try singleContainer.decode(TMDBPersonTVCreditsCrew.self))
        }
    }
    
    public enum CodingKeys: String, CodingKey {
        case mediaType = "media_type"
    }
}

public enum TMDBPersonCreditCrewMedia {
    case movie(credit: TMDBPersonMovieCreditsCrew)
    case tv(credit: TMDBPersonTVCreditsCrew)
}

public enum TMDBPersonCreditCrewMediaType: String, Codable {
    case movie, tv
}
