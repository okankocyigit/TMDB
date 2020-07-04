extension TMDB {
    public struct Constants {
        
        static let baseUrl = "https://api.themoviedb.org/3"
        static var apiKey = Bundle(for: TMDB.self).infoDictionary?["TMDBApiKey"]
        static var debugMode = false
        
        public struct Parameters {
            static let apiKey = "api_key"
            static let language = "language"
            static let page = "page"
            static let query = "query"
            static let movieId = "movie_id"
            static let startDate = "start_date"
            static let endDate = "end_date"
            static let externalSource = "external_source"
            static let country = "country"
            static let includeImageLanguage = "include_image_language"
            static let region = "region"
            static let includeAdult = "include_adult"
            static let year = "year"
            static let primaryReleaseYear = "primary_release_year"
            static let firstAirDateYear = "first_air_date_year"
            static let timezone = "timezone"
            static let requestToken = "request_token"
            static let username = "username"
            static let password = "password"
            static let accessToken = "access_token"
            static let sessionId = "session_id"
            static let sortBy = "sort_by"
            static let mediaId = "media_id"
            static let mediaType = "media_type"
            static let favorite = "favorite"
            static let watchlist = "watchlist"
            static let name = "name"
            static let description = "description"
            static let confirm = "confirm"
            static let guestSessionId = "guest_session_id"
            static let value = "value"
            static let appendToResponse = "append_to_response"
        }
        
        enum HttpHeaderField: String {
            case authentication = "Authorization"
            case contentType = "Content-Type"
            case acceptType = "Accept"
            case acceptEncoding = "Accept-Encoding"
        }
        
        enum ContentType: String {
            case json = "application/json"
        }
    }
}
