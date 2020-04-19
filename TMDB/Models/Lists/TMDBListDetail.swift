public struct TMDBListDetail: Codable {
    public let createdBy, rootDescription: String
    public let favoriteCount: Int
    public let id: String
    public let items: [TMDBListItem]
    public let itemCount: Int
    public let iso639_1, name: String
    public let posterPath: String?

    public enum CodingKeys: String, CodingKey {
        case createdBy = "created_by"
        case rootDescription = "description"
        case favoriteCount = "favorite_count"
        case id, items
        case itemCount = "item_count"
        case iso639_1 = "iso_639_1"
        case name
        case posterPath = "poster_path"
    }
    
    public struct TMDBListItem: Codable {
        public let media: TMDBSearchResultMedia
        public let mediaType: MediaType
        
        public enum TMDBSearchResultMedia {
            case tv(media: TMDBTV)
            case movie(media: TMDBMovie)
        }
        
        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let singleContainer = try decoder.singleValueContainer()
            mediaType = try container.decode(MediaType.self, forKey: .mediaType)
            
            switch mediaType {
            case .movie:
                media = .movie(media: try singleContainer.decode(TMDBMovie.self))
            case .tv:
                media = .tv(media: try singleContainer.decode(TMDBTV.self))
            }
        }
        
        public enum CodingKeys: String, CodingKey {
            case mediaType = "media_type"
        }
        
        public enum MediaType: String, Codable {
            case movie, tv
        }
    }
}

