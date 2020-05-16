public enum TMDBTVSortByParameter: String, TMDBSortByParameter {
    case voteAverage = "vote_average"
    case firstAirDate = "first_air_date"
    case popularity = "popularity"
}

public class TMDBDiscoverTVParameters: Encodable {

    public init() {}
    public var sortBy: TMDBSortBy<TMDBTVSortByParameter>?
    public var airDateGte: Date?
    public var airDateLte: Date?
    public var firstAirDateGte: Date?
    public var firstAirDateLte: Date?
    public var firstAirDateYear: Int?
    public var timezone: String?
    public var voteAverageGte: Double?
    public var voteCountGte: Int?
    public var withGenres: String?
    public var withNetworks: String?
    public var withoutGenres: String?
    public var withRuntimeGte: Int?
    public var withRuntimeLte: Int?
    public var withOriginalLanguage: String?
    public var withoutKeywords: String?
    public var withCompanies: String?
    public var withKeywords: String?
    
    public var includeNullFirstAirDates: Bool? {
           didSet {
               _includeNullFirstAirDates = nil
               if let includeNullFirstAirDates = includeNullFirstAirDates {
                   _includeNullFirstAirDates = includeNullFirstAirDates ? "true": "false"
               }
           }
       }
    
    public var screenedTheatrically: Bool? {
        didSet {
            _screenedTheatrically = nil
            if let screenedTheatrically = screenedTheatrically {
                _screenedTheatrically = screenedTheatrically ? "true": "false"
            }
        }
    }
    
    private var _includeNullFirstAirDates: String?
    private var _screenedTheatrically: String?
    
    func toDictionary() -> [String: Any] {
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
        case airDateGte = "air_date.gte"
        case airDateLte = "air_date.lte"
        case firstAirDateGte = "first_air_date.gte"
        case firstAirDateLte = "first_air_date.lte"
        case firstAirDateYear = "first_air_date_year"
        case timezone = "timezone"
        case voteAverageGte = "vote_average.gte"
        case voteCountGte = "vote_count.gte"
        case withGenres = "with_genres"
        case withNetworks = "with_networks"
        case withoutGenres = "without_genres"
        case withRuntimeGte = "with_runtime.gte"
        case withRuntimeLte = "with_runtime.lte"
        case _includeNullFirstAirDates = "include_null_first_air_dates"
        case withOriginalLanguage = "with_original_language"
        case withoutKeywords = "without_keywords"
        case _screenedTheatrically = "screened_theatrically"
        case withCompanies = "with_companies"
        case withKeywords = "with_keywords"
    }
    
}
