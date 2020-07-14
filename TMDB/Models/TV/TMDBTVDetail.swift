public enum TMDBTVDetailExtraResponses: String {
    case alternativeTitles = "alternative_titles"
    case contentRatings = "content_ratings"
    case credits, images, keywords, recommendations, reviews, similar, translations, videos
    case episodeGroups = "episode_groups"
    case externalIDs = "external_ids"
    case screenedTheatrically = "screened_theatrically"
}

public struct TMDBTVDetail: Codable {
    public let backdropPath: String?
    public let createdBy: [TMDBCreatedBy]
    public let episodeRunTime: [Int]
    public let firstAirDate: String?
    public let genres: [TMDBGenre]
    public let homepage: String?
    public let id: Int
    public let inProduction: Bool
    public let languages: [String]
    public let lastAirDate: String
    public let lastEpisodeToAir: TMDBTVEpisode?
    public let name: String
    public let nextEpisodeToAir: TMDBTVEpisode?
    public let networks: [TMDBNetworkDetail]
    public let numberOfEpisodes, numberOfSeasons: Int
    public let originCountry: [String]
    public let originalLanguage, originalName, overview: String
    public let popularity: Double
    public let posterPath: String?
    public let productionCompanies: [TMDBNetworkDetail]
    public let seasons: [TMDBTVSeason]
    public let status, type: String
    public let voteAverage: Double
    public let voteCount: Int
    
    public let alternativeTitles: TMDBListResult<TMDBAlternativeTitle>?
    public let contentRatings: TMDBListResult<TMDBTVContentRating>?
    public let credits: TMDBCredits?
    public let episodeGroups: TMDBListResult<TMDBTVEpisodeGroups>?
    public let externalIDs: TMDBTVExternalIDs?
    public let images: TMDBImages?
    public let keywords: TMDBListResult<TMDBKeyword>?
    public let recommendations: TMDBPagedListResult<TMDBTV>?
    public let reviews: TMDBPagedListResult<TMDBReview>?
    public let screenedTheatrically: TMDBListResult<TMDBTVScreenedTheatrically>?
    public let similar: TMDBPagedListResult<TMDBTV>?
    public let translations: TMDBTranslations<TMDBTVTranslationData>?
    public let videos: TMDBListResult<TMDBVideo>?

    public enum CodingKeys: String, CodingKey {
        case backdropPath = "backdrop_path"
        case createdBy = "created_by"
        case episodeRunTime = "episode_run_time"
        case firstAirDate = "first_air_date"
        case genres, homepage, id
        case inProduction = "in_production"
        case languages
        case lastAirDate = "last_air_date"
        case lastEpisodeToAir = "last_episode_to_air"
        case name
        case nextEpisodeToAir = "next_episode_to_air"
        case networks
        case numberOfEpisodes = "number_of_episodes"
        case numberOfSeasons = "number_of_seasons"
        case originCountry = "origin_country"
        case originalLanguage = "original_language"
        case originalName = "original_name"
        case overview, popularity
        case posterPath = "poster_path"
        case productionCompanies = "production_companies"
        case seasons, status, type
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
        case alternativeTitles = "alternative_titles"
        case contentRatings = "content_ratings"
        case credits, images, keywords, recommendations, reviews, similar, translations, videos
        case episodeGroups = "episode_groups"
        case externalIDs = "external_ids"
        case screenedTheatrically = "screened_theatrically"
    }
}

public struct TMDBCreatedBy: Codable {
    public let id: Int
    public let creditID, name: String
    public let gender: Int
    public let profilePath: String?

    public enum CodingKeys: String, CodingKey {
        case id
        case creditID = "credit_id"
        case name, gender
        case profilePath = "profile_path"
    }
}
