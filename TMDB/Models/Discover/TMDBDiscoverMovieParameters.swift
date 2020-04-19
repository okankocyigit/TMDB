public enum TMDBSortBy<T: TMDBSortByParameter>: Encodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .asc(let param):
            try container.encode("\(param.rawValue).asc")
        case .desc(let param):
            try container.encode("\(param.rawValue).desc")
        }
    }
    
    var rawValue: String {
        switch self {
        case .asc(let param):
            return "\(param.rawValue).asc"
        case .desc(let param):
            return "\(param.rawValue).desc"
        }
    }
    
    case asc(param: T)
    case desc(param: T)
}

public protocol TMDBSortByParameter {
    var rawValue: String { get }
}

public enum TMDBCertificationParameter {
    
    case certification(cert: String, country: String)
    case certificationLte(cert: String, country: String)
    case certificationGte(cert: String, country: String)
}

public enum TMDBMovieSortByParameter: String, TMDBSortByParameter {
    case popularity, revenue
    case releaseDate = "release_date"
    case primaryReleaseDate = "primary_release_date"
    case originalTitle = "original_title"
    case voteAverage = "vote_average"
    case voteCount = "vote_count"
}

public class TMDBDiscoverMovieParameters: Encodable {
    
    public init() {}
    public var sortBy: TMDBSortBy<TMDBMovieSortByParameter>?
    public var certification: TMDBCertificationParameter?
    public var includeAdult: Bool? {
        didSet {
            _includeAdult = nil
            if let includeAdult = includeAdult {
                _includeAdult = includeAdult ? "true": "false"
            }
        }
    }
    public var includeVideo: Bool? {
        didSet {
            _includeVideo = nil
            if let includeVideo = includeVideo {
                _includeVideo = includeVideo ? "true": "false"
            }
        }
    }
    public var primaryReleaseYear: Int?
    public var primaryReleaseDateLte: Date?
    public var primaryReleaseDateGte: Date?
    public var releaseDateGte: Date?
    public var releaseDateLte: Date?
    public var withReleaseType: Date?
    public var year: Int?
    public var voteCountGte: Int?
    public var voteCountLte: Int?
    public var voteAverageGte: Double?
    public var voteAverageLte: Double?
    public var withCast: String?
    public var withCrew: String?
    public var withPeople: String?
    public var withCompanies: String?
    public var withGenres: String?
    public var withoutGenres: String?
    public var withKeywords: String?
    public var withoutKeywords: String?
    public var withRuntimeGte: Int?
    public var withRuntimeLte: Int?
    public var withOriginal_language: String?
    
    private var _certification: String?
    private var _certificationLte: String?
    private var _certificationGte: String?
    private var _certificationCountry: String?
    private var _includeAdult: String?
    private var _includeVideo: String?
    
    func toDictionary() -> [String: Any] {
        switch self.certification {
        case .certification(let params):
            self._certification = params.cert
            self._certificationCountry = params.country
        case .certificationLte(let params):
            self._certificationLte = params.cert
            self._certificationCountry = params.country
        case .certificationGte(let params):
            self._certificationGte = params.cert
            self._certificationCountry = params.country
        case .none:
            break
        }
        
        if let jsonData = try? self.jsonData() {
            if let json = try? JSONSerialization.jsonObject(with: jsonData, options: []) {
                if let dictionary = json as? [String : Any]  {
                    return dictionary
                }
            }
        }
        return [:]
    }
    
    public enum CodingKeys: String, CodingKey {
        case sortBy = "sort_by"
        case _certificationLte = "certification.lte"
        case _certificationGte = "certification.gte"
        case _certification = "certification"
        case _certificationCountry = "certification_country"
        case _includeAdult = "include_adult"
        case _includeVideo = "include_video"
        case primaryReleaseYear = "primary_release_year"
        case primaryReleaseDateLte = "primary_release_date.lte"
        case primaryReleaseDateGte = "primary_release_date.gte"
        case releaseDateGte = "release_date.gte"
        case releaseDateLte = "release_date.lte"
        case withReleaseType = "with_release_type"
        case year = "year"
        case voteCountGte = "vote_count.gte"
        case voteCountLte = "vote_count.lte"
        case voteAverageGte = "vote_average.gte"
        case voteAverageLte = "vote_average.lte"
        case withCast = "with_cast"
        case withCrew = "with_crew"
        case withPeople = "with_people"
        case withCompanies = "with_companies"
        case withGenres = "with_genres"
        case withoutGenres = "without_genres"
        case withKeywords = "with_keywords"
        case withoutKeywords = "without_keywords"
        case withRuntimeGte = "with_runtime.gte"
        case withRuntimeLte = "with_runtime.lte"
        case withOriginal_language = "with_original_language"
    }
    
}

extension Encodable {
    func jsonData() throws -> Data {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        encoder.dateEncodingStrategy = .formatted(formatter)
        return try encoder.encode(self)
    }
}
