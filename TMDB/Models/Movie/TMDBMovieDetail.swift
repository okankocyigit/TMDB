import Foundation

public enum TMDBMovieDetailExtraResponses: String {
    case alternativeTitles = "alternative_titles"
    case credits
    case externalIDs = "external_ids"
    case images
    case keywords
    case releaseDates = "release_dates"
    case videos
    case translations
    case recommendations
    case similar
    case reviews
    case lists
}

public struct TMDBMovieDetail: Codable {
    public let adult: Bool
    public let backdropPath: String
    public let belongsToCollection: TMDBCollection
    public let budget: Int
    public let genres: [TMDBGenre]
    public let homepage: String
    public let id: Int
    public let imdbID, originalLanguage, originalTitle, overview: String
    public let popularity: Double
    public let posterPath: String
    public let productionCompanies: [TMDBCompany]
    public let productionCountries: [TMDBCountry]
    public let releaseDate: String
    public let revenue, runtime: Int
    public let spokenLanguages: [TMDBLanguage]
    public let status, tagline, title: String
    public let video: Bool
    public let voteAverage: Double
    public let voteCount: Int
    public let videos: TMDBListResult<TMDBVideo>?
    public let images: TMDBImages?
    public let keywords: TMDBKeywords?
    public let releaseDates: TMDBListResult<TMDBReleaseDates>?
    public let translations: TMDBTranslations<TMDBMovieTranslationData>?
    public let recommendations: TMDBPagedListResult<TMDBMovie>?
    public let similar: TMDBPagedListResult<TMDBMovie>?
    public let reviews: TMDBPagedListResult<TMDBReview>?
    public let lists: TMDBPagedListResult<TMDBList>?
    public let alternativeTitles: TMDBAlternativeTitles?
    public let credits: TMDBCredits?
    public let externalIDs: TMDBExternalIDs?

    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case belongsToCollection = "belongs_to_collection"
        case budget, genres, homepage, id
        case imdbID = "imdb_id"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview, popularity
        case posterPath = "poster_path"
        case productionCompanies = "production_companies"
        case productionCountries = "production_countries"
        case releaseDate = "release_date"
        case revenue, runtime
        case spokenLanguages = "spoken_languages"
        case status, tagline, title, video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
        case videos, images, keywords, translations, recommendations, similar, reviews, lists
        case credits
        case releaseDates = "release_dates"
        case alternativeTitles = "alternative_titles"
        case externalIDs = "external_ids"
    }
}
