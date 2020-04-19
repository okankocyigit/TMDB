public struct TMDBCredit: Decodable {
    public let creditType, department, job: String
    public let id: String
    public let person: TMDBPerson
    
    public let media: TMDBCreditMedia?
    public let mediaType: MediaType
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        mediaType = try container.decode(MediaType.self, forKey: .mediaType)
        creditType = try container.decode(String.self, forKey: .creditType)
        department = try container.decode(String.self, forKey: .department)
        job = try container.decode(String.self, forKey: .job)
        id = try container.decode(String.self, forKey: .id)
        person = try container.decode(TMDBPerson.self, forKey: .person)

        switch mediaType {
        case .movie:
            media = .movie(movie: try container.decode(TMDBMovie.self, forKey: .media))
        case .tv:
            media = .tv(tv: try container.decode(TMDBTV.self, forKey: .media))
        }
    }

    public enum CodingKeys: String, CodingKey {
        case creditType = "credit_type"
        case department, job, media
        case mediaType = "media_type"
        case id, person
    }
    
    public enum TMDBCreditMedia {
        case movie(movie: TMDBMovie)
        case tv(tv: TMDBTV)
    }
    
    public enum MediaType: String, Codable {
        case movie, tv
    }
}
