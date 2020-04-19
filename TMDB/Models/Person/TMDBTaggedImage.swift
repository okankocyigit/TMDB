public struct TMDBTaggedImage: Codable {
    public let media: TMDBTaggedImageMedia
    public let image: TMDBImage
    public let mediaType: MediaType
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let singleContainer = try decoder.singleValueContainer()
        mediaType = try container.decode(MediaType.self, forKey: .mediaType)
        image = try singleContainer.decode(TMDBImage.self)
        switch mediaType {
        case .movie:
            media = .movie(media: try container.decode(TMDBMovie.self, forKey: .media))
        case .tv:
            media = .tv(media: try container.decode(TMDBTV.self, forKey: .media))
        }
    }
    
    public func encode(to encoder: Encoder) throws {

    }
    
    public enum MediaType: String, Codable {
        case movie, tv
    }
    
    public enum CodingKeys: String, CodingKey {
        case mediaType = "media_type", media = "media"
    }
    
    public enum TMDBTaggedImageMedia {
        case movie(media: TMDBMovie)
        case tv(media: TMDBTV)
    }
}
