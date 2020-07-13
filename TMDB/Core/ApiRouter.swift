extension TMDB {
    internal enum ApiRouter {
        case getAccountDetail(sessionId: String)
        case getAccountLists(sessionId: String, page: Int)
        case getAccountFavoriteMovies(sessionId: String, page: Int, sortBy: TMDBSortBy<TMDBAccountListsSortByParameters>?)
        case getAccountFavoriteTVShows(sessionId: String, page: Int, sortBy: TMDBSortBy<TMDBAccountListsSortByParameters>?)
        case markMediaAsFavorite(sessionId: String, mediaId: Int, mediaType: TMDBAccountMediaType, isFavorite: Bool)
        case getAccountRatedMovies(sessionId: String, page: Int, sortBy: TMDBSortBy<TMDBAccountListsSortByParameters>?)
        case getAccountRatedTVShows(sessionId: String, page: Int, sortBy: TMDBSortBy<TMDBAccountListsSortByParameters>?)
        case getAccountRatedTVEpisodes(sessionId: String, page: Int, sortBy: TMDBSortBy<TMDBAccountListsSortByParameters>?)
        case getAccountWatchListMovies(sessionId: String, page: Int, sortBy: TMDBSortBy<TMDBAccountListsSortByParameters>?)
        case getAccountWatchListTVShows(sessionId: String, page: Int, sortBy: TMDBSortBy<TMDBAccountListsSortByParameters>?)
        case addMediaToWatchList(sessionId: String, mediaId: Int, mediaType: TMDBAccountMediaType, inWatchList: Bool)
        
        case createGuestSession
        case createRequestToken
        case createSession(requestToken: String)
        case createSessionWithLogin(requestToken: String, username: String, password: String)
        case createSessionFromV4Access(accessToken: String)
        case deleteSession(sessionId: String)
        
        case getCertifications(type: TMDBDataType)
        
        case getChanges(type: TMDBChangesDataType, page: Int = 1, startDate: Date? = nil, endDate: Date? = nil)
        
        case getCollection(id: Int)
        case getCollectionImages(id: Int)
        case getCollectionTranslations(id: Int)
        
        case getCompanyDetail(id: Int)
        case getCompanyAlternativeNames(id: Int)
        case getCompanyImages(id: Int)
        
        case getConfiguration
        case getConfigurationCountries
        case getConfigurationJobs
        case getConfigurationLanguages
        case getConfigurationPrimaryTranslations
        case getConfigurationTimezones
        
        case getCreditDetail(id: String)
        
        case getDiscoverMovies(page: Int, parameters: TMDBDiscoverMovieParameters)
        case getDiscoverTV(page: Int, parameters: TMDBDiscoverTVParameters)
        
        case getFind(externalId: String, externalSource: TMDBExternalSource)
        
        case getGenreList(type: TMDBDataType)
        
        case getGuestSessionRatedMovies(sessionId: String, page: Int, sortBy: TMDBSortBy<TMDBAccountListsSortByParameters>?)
        case getGuestSessionRatedTVShows(sessionId: String, page: Int, sortBy: TMDBSortBy<TMDBAccountListsSortByParameters>?)
        case getGuestSessionRatedTVEpisodes(sessionId: String, page: Int, sortBy: TMDBSortBy<TMDBAccountListsSortByParameters>?)
        
        case getKeywordDetails(id: Int)
        case getKeywordMovies(id: Int, page: Int, includeAdult: Bool)
        
        case getListDetail(id: String)
        case checkListItemStatus(listId: String, movieId: Int)
        case createList(sessionId: String, name: String, description: String, language: String)
        case addListItem(sessionId: String, listId: String, mediaId: Int)
        case removeListItem(sessionId: String, listId: String, mediaId: Int)
        case clearList(sessionId: String, listId: String)
        case deleteList(sessionId: String, listId: String)
        
        case getMovieDetail(id: Int, appendToResponse: [TMDBMovieDetailExtraResponses], includeImageLanguage: String?, page: Int)
        case getMovieAlternativeTitles(id: Int, country: String?)
        case getMovieChanges(id: Int, startDate: Date?, endDate: Date?)
        case getMovieCredits(id: Int)
        case getMovieExternalIDs(id: Int)
        case getMovieImages(id: Int, includeImageLanguage: String?)
        case getMovieKeywords(id: Int)
        case getMovieReleaseDates(id: Int)
        case getMovieVideos(id: Int)
        case getMovieTranslations(id: Int)
        case getMovieRecommendations(id: Int, page: Int)
        case getMovieSimilar(id: Int, page: Int)
        case getMovieReviews(id: Int, page: Int)
        case getMovieLists(id: Int, page: Int)
        case rateMovie(id: Int, value: Double, guestSessionId: String?, sessionId: String?)
        case deleteMovieRating(id: Int, guestSessionId: String?, sessionId: String?)
        case getMovieLatest
        case getMovieNowPlaying(page: Int, region: String?)
        case getMoviePopular(page: Int, region: String?)
        case getMovieTopRated(page: Int, region: String?)
        case getMovieUpcoming(page: Int, region: String?)
        
        case getNetworkDetail(id: Int)
        case getNetworkAlternativeNames(id: Int)
        case getNetworkImages(id: Int)
        
        case getTrending(mediaType: TMDBTrendingMediaType, timeWindow: TMDBTimeWindow)
        
        case getPerson(id: Int)
        case getPersonChanges(id: Int, page: Int, startDate: Date? = nil, endDate: Date?)
        case getPersonMovieCredits(id: Int)
        case getPersonTVCredits(id: Int)
        case getPersonCombinedCredits(id: Int)
        case getPersonExternalIDs(id: Int)
        case getPersonImages(id: Int)
        case getPersonTaggedImages(id: Int, page: Int)
        case getPersonTranslations(id: Int)
        case getPersonLatest
        case getPersonPopular(page: Int)
        
        case getReview(id: String)
        
        case searchCompanies(query: String, page: Int)
        case searchCollections(query: String, page: Int)
        case searchKeywords(query: String, page: Int)
        case searchMovies(query: String, includeAdult: Bool?, region: String?, year: Int?, primaryReleaseYear: Int?, page: Int)
        case searchAll(query: String, includeAdult: Bool?, region: String?, page: Int)
        case searchPeople(query: String, includeAdult: Bool?, region: String?, page: Int)
        case searchTV(query: String, includeAdult: Bool?, firstAirDateYear: Int?, page: Int)
        
        case getTVDetail(id: Int, appendToResponse: [TMDBTVDetailExtraResponses], includeImageLanguage: String?, page: Int)
        case getTVAccountStates(id: Int, sessionId: String? = nil, guestSessionId: String? = nil)
        case getTVAlternativeTitles(id: Int)
        case getTVChanges(id: Int, page: Int = 1, startDate: Date? = nil, endDate: Date? = nil)
        case getTVContentRatings(id: Int)
        case getTVCredits(id: Int)
        case getTVEpisodeGroups(id: Int)
        case getTVExternalIDs(id: Int)
        case getTVImages(id: Int)
        case getTVKeywords(id: Int)
        case rateTV(id: Int, value: Double, guestSessionId: String?, sessionId: String?)
        case deleteTVRating(id: Int, guestSessionId: String?, sessionId: String?)
        case getTVRecommendations(id: Int, page: Int)
        case getTVReviews(id: Int, page: Int)
        case getTVScreenedTheatrically(id: Int)
        case getTVSimilar(id: Int, page: Int)
        case getTVTranslations(id: Int)
        case getTVVideos(id: Int)
        case getTVLatest
        case getTVAiringToday(page: Int, timezone: String?)
        case getTVOnTheAir(page: Int)
        case getTVPopular(page: Int)
        case getTVTopRated(page: Int)
        
        case getTVSeasonDetail(id: Int, seasonNumber: Int)
        case getTVSeasonAccountStates(id: Int, seasonNumber: Int, sessionId: String? = nil, guestSessionId: String? = nil)
        case getTVSeasonCredits(id: Int, seasonNumber: Int)
        case getTVSeasonExternalIDs(id: Int, seasonNumber: Int)
        case getTVSeasonImages(id: Int, seasonNumber: Int)
        case getTVSeasonVideos(id: Int, seasonNumber: Int)
        
        case getTVEpisodeDetail(id: Int, seasonNumber: Int, episodeNumber: Int)
        case getTVEpisodeAccountStates(id: Int, seasonNumber: Int, episodeNumber: Int, sessionId: String? = nil, guestSessionId: String? = nil)
        case getTVEpisodeCredits(id: Int, seasonNumber: Int, episodeNumber: Int)
        case getTVEpisodeExternalIDs(id: Int, seasonNumber: Int, episodeNumber: Int)
        case getTVEpisodeImages(id: Int, seasonNumber: Int, episodeNumber: Int)
        case rateTVEpisode(id: Int, value: Double, seasonNumber: Int, episodeNumber: Int, guestSessionId: String?, sessionId: String?)
        case deleteTVEpisodeRating(id: Int, seasonNumber: Int, episodeNumber: Int, guestSessionId: String?, sessionId: String?)
        case getTVEpisodeTranslations(id: Int, seasonNumber: Int, episodeNumber: Int)
        case getTVEpisodeVideos(id: Int, seasonNumber: Int, episodeNumber: Int)
        
        case getTVEpisodeGroup(id: String)
        
        func asURLRequest() throws -> URLRequest {
            let url = URL(string: Constants.baseUrl)!
            
            var urlRequest = URLRequest(url: url.appendingPathComponent(path))
            
            urlRequest.httpMethod = method.rawValue
            urlRequest.setValue(Constants.ContentType.json.rawValue, forHTTPHeaderField: Constants.HttpHeaderField.acceptType.rawValue)
            urlRequest.setValue(Constants.ContentType.json.rawValue, forHTTPHeaderField: Constants.HttpHeaderField.contentType.rawValue)
            
            switch method {
            case .get:
                var components = URLComponents(url: urlRequest.url!, resolvingAgainstBaseURL: true)!
                var queryItems : [URLQueryItem] = []
                for (key, value) in parameters {
                    queryItems.append(URLQueryItem(name: key, value: "\(value)"))
                }
                components.queryItems = queryItems
                components.percentEncodedQuery = components.percentEncodedQuery?.replacingOccurrences(of: "+", with: "%2B")
                urlRequest.url = components.url!
            case .post, .delete:
                do {
                    var components = URLComponents(url: urlRequest.url!, resolvingAgainstBaseURL: true)!
                    var queryItems : [URLQueryItem] = []
                    if let apiKey = parameters[Constants.Parameters.apiKey] as? String {
                        queryItems.append(URLQueryItem(name: Constants.Parameters.apiKey, value: apiKey))
                    }
                    
                    if let sessionId = parameters[Constants.Parameters.sessionId] as? String {
                        queryItems.append(URLQueryItem(name: Constants.Parameters.sessionId, value: sessionId))
                    }
                    
                    if let confirm = parameters[Constants.Parameters.confirm] as? Bool {
                        queryItems.append(URLQueryItem(name: Constants.Parameters.confirm, value: "\(confirm)"))
                    }
                    
                    components.queryItems = queryItems
                    components.percentEncodedQuery = components.percentEncodedQuery?.replacingOccurrences(of: "+", with: "%2B")
                    urlRequest.url = components.url!
                    urlRequest.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
                } catch {
                    
                }
            }
            
            return urlRequest
        }
        
        private enum HTTPMethod: String {
            case get = "GET"
            case post = "POST"
            case delete = "DELETE"
        }
        
        private var method: HTTPMethod {
            switch self {
            case .createSession, .createSessionWithLogin, .markMediaAsFavorite,
                 .addMediaToWatchList, .createList, .addListItem, .removeListItem,
                 .clearList, .rateMovie, .rateTV, .rateTVEpisode:
                return .post
            case .deleteSession, .deleteList, .deleteMovieRating, .deleteTVRating, .deleteTVEpisodeRating:
                return .delete
            default:
                return .get
            }
        }
        
        private var path: String {
            switch self {
                
            case .getAccountDetail:
                return "account"
            case .getAccountLists:
                return "account/{account_id}/lists"
            case .getAccountFavoriteMovies:
                return "account/{account_id}/favorite/movies"
            case .getAccountFavoriteTVShows:
                return "account/{account_id}/favorite/tv"
            case .markMediaAsFavorite:
                return "account/{account_id}/favorite"
            case .getAccountRatedMovies:
                return "account/{account_id}/rated/movies"
            case .getAccountRatedTVShows:
                return "account/{account_id}/rated/tv"
            case .getAccountRatedTVEpisodes:
                return "account/{account_id}/rated/tv/episodes"
            case .getAccountWatchListMovies:
                return "account/{account_id}/watchlist/movies"
            case .getAccountWatchListTVShows:
                return "account/{account_id}/watchlist/tv"
            case .addMediaToWatchList:
                return "account/{account_id}/watchlist"
                
            case .createGuestSession:
                return "authentication/guest_session/new"
            case .createRequestToken:
                return "authentication/token/new"
            case .createSession:
                return "authentication/session/new"
            case .createSessionWithLogin:
                return "authentication/token/validate_with_login"
            case .createSessionFromV4Access:
                return "authentication/session/convert/4"
            case .deleteSession:
                return "authentication/session"
                
            case .getCertifications(let type):
                switch type {
                case .tv:
                    return "certification/tv/list"
                case .movie:
                    return "certification/movie/list"
                }
            case .getChanges(let params):
                switch params.type {
                case .movie:
                    return "movie/changes"
                case .tv:
                    return "tv/changes"
                case .person:
                    return "person/changes"
                }
            case .getCollection(let id):
                return "collection/\(id)"
            case .getCollectionImages(let id):
                return "collection/\(id)/images"
            case .getCollectionTranslations(let id):
                return "collection/\(id)/translations"
                
            case .getCompanyDetail(let id):
                return "company/\(id)"
            case .getCompanyAlternativeNames(let id):
                return "company/\(id)/alternative_names"
            case .getCompanyImages(let id):
                return "company/\(id)/images"
                
            case .getConfiguration:
                return "configuration"
            case .getConfigurationCountries:
                return "configuration/countries"
            case .getConfigurationJobs:
                return "configuration/jobs"
            case .getConfigurationLanguages:
                return "configuration/languages"
            case .getConfigurationPrimaryTranslations:
                return "configuration/primary_translations"
            case .getConfigurationTimezones:
                return "configuration/timezones"
                
            case .getCreditDetail(let id):
                return "credit/\(id)"
                
            case .getDiscoverMovies:
                return "discover/movie"
            case .getDiscoverTV:
                return "discover/tv"
                
            case .getFind(let params):
                return "find/\(params.externalId)"
                
            case .getGenreList(let type):
                switch type {
                case .tv:
                    return "genre/tv/list"
                case .movie:
                    return "genre/movie/list"
                }
                
            case .getGuestSessionRatedMovies(let params):
                return "/guest_session/\(params.sessionId)/rated/movies"
            case .getGuestSessionRatedTVShows(let params):
                return "/guest_session/\(params.sessionId)/rated/tv"
            case .getGuestSessionRatedTVEpisodes(let params):
                return "/guest_session/\(params.sessionId)/rated/tv/episodes"
                
            case .getKeywordDetails(let id):
                return "keyword/\(id)"
            case .getKeywordMovies(let params):
                return "keyword/\(params.id)/movies"
                
            case .getListDetail(let id):
                return "list/\(id)"
            case .checkListItemStatus(let params):
                return "list/\(params.listId)/item_status"
            case .createList:
                return "list"
            case .addListItem(let params):
                return "list/\(params.listId)/add_item"
            case .removeListItem(let params):
                return "list/\(params.listId)/remove_item"
            case .clearList(let params):
                return "list/\(params.listId)/clear"
            case .deleteList(let params):
                return "list/\(params.listId)"
                
            case .getMovieDetail(let params):
                return "movie/\(params.id)"
            case .getMovieAlternativeTitles(let params):
                return "movie/\(params.id)/alternative_titles"
            case .getMovieChanges(let params):
                return "movie/\(params.id)/changes"
            case .getMovieCredits(let id):
                return "movie/\(id)/credits"
            case .getMovieExternalIDs(let id):
                return "movie/\(id)/external_ids"
            case .getMovieImages(let params):
                return "movie/\(params.id)/images"
            case .getMovieKeywords(let id):
                return "movie/\(id)/keywords"
            case .getMovieReleaseDates(let id):
                return "movie/\(id)/release_dates"
            case .getMovieVideos(let id):
                return "movie/\(id)/videos"
            case .getMovieTranslations(let id):
                return "movie/\(id)/translations"
            case .getMovieRecommendations(let params):
                return "movie/\(params.id)/recommendations"
            case .getMovieSimilar(let params):
                return "movie/\(params.id)/similar"
            case .getMovieReviews(let params):
                return "movie/\(params.id)/reviews"
            case .getMovieLists(let params):
                return "movie/\(params.id)/lists"
            case .rateMovie(let params):
                return "movie/\(params.id)/rating"
            case .deleteMovieRating(let params):
                return "movie/\(params.id)/rating"
            case .getMovieLatest:
                return "movie/latest"
            case .getMovieNowPlaying:
                return "movie/now_playing"
            case .getMoviePopular:
                return "movie/popular"
            case .getMovieTopRated:
                return "movie/top_rated"
            case .getMovieUpcoming:
                return "movie/upcoming"
                
            case .getNetworkDetail(let id):
                return "network/\(id)"
            case .getNetworkAlternativeNames(let id):
                return "network/\(id)/alternative_names"
            case .getNetworkImages(let id):
                return "network/\(id)/images"
                
            case .getTrending(let params):
                return "trending/\(params.mediaType)/\(params.timeWindow)"
                
            case .getPerson(let id):
                return "person/\(id)"
            case .getPersonChanges(let params):
                return "person/\(params.id)/changes"
            case .getPersonMovieCredits(let id):
                return "person/\(id)/movie_credits"
            case .getPersonTVCredits(let id):
                return "person/\(id)/tv_credits"
            case .getPersonCombinedCredits(let id):
                return "person/\(id)/combined_credits"
            case .getPersonExternalIDs(let id):
                return "person/\(id)/external_ids"
            case .getPersonImages(let id):
                return "person/\(id)/images"
            case .getPersonTaggedImages(let params):
                return "person/\(params.id)/tagged_images"
            case .getPersonTranslations(let id):
                return "person/\(id)/translations"
            case .getPersonLatest:
                return "person/latest"
            case .getPersonPopular:
                return "person/popular"
                
            case .getReview(let id):
                return "review/\(id)"
            case .searchCompanies:
                return "search/company"
            case .searchCollections:
                return "search/collection"
            case .searchKeywords:
                return "search/keyword"
            case .searchMovies:
                return "search/movie"
            case .searchAll:
                return "search/multi"
            case .searchPeople:
                return "search/person"
            case .searchTV:
                return "search/tv"
                
            case .getTVDetail(let params):
                return "tv/\(params.id)"
            case .getTVAccountStates(let params):
                return "tv/\(params.id)/account_states"
            case .getTVAlternativeTitles(let id):
                return "tv/\(id)/alternative_titles"
            case .getTVChanges(let params):
                return "tv/\(params.id)/changes"
            case .getTVContentRatings(let id):
                return "tv/\(id)/content_ratings"
            case .getTVCredits(let id):
                return "tv/\(id)/credits"
            case .getTVEpisodeGroups(let id):
                return "tv/\(id)/episode_groups"
            case .getTVExternalIDs(let id):
                return "tv/\(id)/external_ids"
            case .getTVImages(let id):
                return "tv/\(id)/images"
            case .getTVKeywords(let id):
                return "tv/\(id)/keywords"
            case .rateTV(let params):
                return "tv/\(params.id)/rating"
            case .deleteTVRating(let params):
                return "tv/\(params.id)/rating"
            case .getTVRecommendations(let params):
                return "tv/\(params.id)/recommendations"
            case .getTVReviews(let params):
                return "tv/\(params.id)/reviews"
            case .getTVScreenedTheatrically(let id):
                return "/tv/\(id)/screened_theatrically"
            case .getTVSimilar(let params):
                return "tv/\(params.id)/similar"
            case .getTVTranslations(let id):
                return "tv/\(id)/translations"
            case .getTVVideos(let id):
                return "tv/\(id)/videos"
            case .getTVLatest:
                return "tv/latest"
            case .getTVAiringToday:
                return "tv/airing_today"
            case .getTVOnTheAir:
                return "tv/on_the_air"
            case .getTVPopular:
                return "tv/popular"
            case .getTVTopRated:
                return "tv/top_rated"
                
            case .getTVSeasonDetail(let params):
                return "tv/\(params.id)/season/\(params.seasonNumber)"
            case .getTVSeasonAccountStates(let params):
                return "tv/\(params.id)/season/\(params.seasonNumber)/account_states"
            case .getTVSeasonCredits(let params):
                return "tv/\(params.id)/season/\(params.seasonNumber)/credits"
            case .getTVSeasonExternalIDs(let params):
                return "tv/\(params.id)/season/\(params.seasonNumber)/external_ids"
            case .getTVSeasonImages(let params):
                return "tv/\(params.id)/season/\(params.seasonNumber)/images"
            case .getTVSeasonVideos(let params):
                return "tv/\(params.id)/season/\(params.seasonNumber)/videos"
                
            case .getTVEpisodeDetail(let params):
                return "tv/\(params.id)/season/\(params.seasonNumber)/episode/\(params.episodeNumber)"
            case .getTVEpisodeAccountStates(let params):
                return "/tv/\(params.id)/season/\(params.seasonNumber)/episode/\(params.episodeNumber)/account_states"
            case .getTVEpisodeCredits(let params):
                return "tv/\(params.id)/season/\(params.seasonNumber)/episode/\(params.episodeNumber)/credits"
            case .getTVEpisodeExternalIDs(let params):
                return "tv/\(params.id)/season/\(params.seasonNumber)/episode/\(params.episodeNumber)/external_ids"
            case .getTVEpisodeImages(let params):
                return "tv/\(params.id)/season/\(params.seasonNumber)/episode/\(params.episodeNumber)/images"
            case .rateTVEpisode(let params):
                return "tv/\(params.id)/season/\(params.seasonNumber)/episode/\(params.episodeNumber)/rating"
            case .deleteTVEpisodeRating(let params):
                return "tv/\(params.id)/season/\(params.seasonNumber)/episode/\(params.episodeNumber)/rating"
            case .getTVEpisodeTranslations(let params):
                return "tv/\(params.id)/season/\(params.seasonNumber)/episode/\(params.episodeNumber)/translations"
            case .getTVEpisodeVideos(let params):
                return "tv/\(params.id)/season/\(params.seasonNumber)/episode/\(params.episodeNumber)/videos"
                
            case .getTVEpisodeGroup(let id):
                return "tv/episode_group/\(id)"
                
            }
        }
        
        private var parameters: [String: Any] {
            let preferredLanguage = Locale.preferredLanguages[0] as String
            var _parameters: [String: Any] = [
                Constants.Parameters.apiKey: Constants.apiKey ?? "",
                Constants.Parameters.language: preferredLanguage
            ]
            switch self {
                
            case .getAccountDetail(let sessionId):
                _parameters[Constants.Parameters.sessionId] = sessionId
            case .getAccountLists(let params):
                _parameters[Constants.Parameters.sessionId] = params.sessionId
                _parameters[Constants.Parameters.page] = params.page
            case .getAccountFavoriteMovies(let params):
                _parameters[Constants.Parameters.sessionId] = params.sessionId
                _parameters[Constants.Parameters.page] = params.page
                if let sortBy = params.sortBy {
                    _parameters[Constants.Parameters.sortBy] = sortBy.rawValue
                }
            case .getAccountFavoriteTVShows(let params):
                _parameters[Constants.Parameters.sessionId] = params.sessionId
                _parameters[Constants.Parameters.page] = params.page
                if let sortBy = params.sortBy {
                    _parameters[Constants.Parameters.sortBy] = sortBy.rawValue
                }
            case .markMediaAsFavorite(let params):
                _parameters[Constants.Parameters.sessionId] = params.sessionId
                _parameters[Constants.Parameters.favorite] = params.isFavorite
                _parameters[Constants.Parameters.mediaId] = params.mediaId
                _parameters[Constants.Parameters.mediaType] = params.mediaType.rawValue
            case .getAccountRatedMovies(let params):
                _parameters[Constants.Parameters.sessionId] = params.sessionId
                _parameters[Constants.Parameters.page] = params.page
                if let sortBy = params.sortBy {
                    _parameters[Constants.Parameters.sortBy] = sortBy.rawValue
                }
            case .getAccountRatedTVShows(let params):
                _parameters[Constants.Parameters.sessionId] = params.sessionId
                _parameters[Constants.Parameters.page] = params.page
                if let sortBy = params.sortBy {
                    _parameters[Constants.Parameters.sortBy] = sortBy.rawValue
                }
            case .getAccountRatedTVEpisodes(let params):
                _parameters[Constants.Parameters.sessionId] = params.sessionId
                _parameters[Constants.Parameters.page] = params.page
                if let sortBy = params.sortBy {
                    _parameters[Constants.Parameters.sortBy] = sortBy.rawValue
                }
            case .getAccountWatchListMovies(let params):
                _parameters[Constants.Parameters.sessionId] = params.sessionId
                _parameters[Constants.Parameters.page] = params.page
                if let sortBy = params.sortBy {
                    _parameters[Constants.Parameters.sortBy] = sortBy.rawValue
                }
            case .getAccountWatchListTVShows(let params):
                _parameters[Constants.Parameters.sessionId] = params.sessionId
                _parameters[Constants.Parameters.page] = params.page
                if let sortBy = params.sortBy {
                    _parameters[Constants.Parameters.sortBy] = sortBy.rawValue
                }
            case .addMediaToWatchList(let params):
                _parameters[Constants.Parameters.sessionId] = params.sessionId
                _parameters[Constants.Parameters.watchlist] = params.inWatchList
                _parameters[Constants.Parameters.mediaId] = params.mediaId
                _parameters[Constants.Parameters.mediaType] = params.mediaType.rawValue
                
            case .createSession(let requestToken):
                _parameters[Constants.Parameters.requestToken] = requestToken
            case .createSessionWithLogin(let params):
                _parameters[Constants.Parameters.requestToken] = params.requestToken
                _parameters[Constants.Parameters.username] = params.username
                _parameters[Constants.Parameters.password] = params.password
            case .createSessionFromV4Access(let accessToken):
                _parameters[Constants.Parameters.accessToken] = accessToken
            case .deleteSession(let sessionId):
                _parameters[Constants.Parameters.sessionId] = sessionId
            case .getChanges(let params):
                _parameters[Constants.Parameters.page] = params.page
                _parameters[Constants.Parameters.startDate] = params.startDate
                _parameters[Constants.Parameters.endDate] = params.endDate
            case .getDiscoverMovies(let params):
                _parameters[Constants.Parameters.page] = params.page
                _parameters = _parameters.merging(params.parameters.toDictionary(), uniquingKeysWith: { (current, _) in current })
            case .getTVAccountStates(let params):
                if let sessionId = params.sessionId {
                    _parameters[Constants.Parameters.sessionId] = sessionId
                }
                
                if let guestSessionId = params.guestSessionId {
                    _parameters[Constants.Parameters.guestSessionId] = guestSessionId
                }
            case .getDiscoverTV(let params):
                _parameters = _parameters.merging(params.parameters.toDictionary(), uniquingKeysWith: { (current, _) in current })
                _parameters[Constants.Parameters.page] = params.page
            case .getFind(let params):
                _parameters[Constants.Parameters.externalSource] = params.externalSource
            case .getGuestSessionRatedMovies(let params):
                _parameters[Constants.Parameters.page] = params.page
                if let sortBy = params.sortBy {
                    _parameters[Constants.Parameters.sortBy] = sortBy.rawValue
                }
            case .getGuestSessionRatedTVShows(let params):
                _parameters[Constants.Parameters.page] = params.page
                if let sortBy = params.sortBy {
                    _parameters[Constants.Parameters.sortBy] = sortBy.rawValue
                }
            case .getGuestSessionRatedTVEpisodes(let params):
                _parameters[Constants.Parameters.page] = params.page
                if let sortBy = params.sortBy {
                    _parameters[Constants.Parameters.sortBy] = sortBy.rawValue
                }
            case .getKeywordMovies(let params):
                _parameters[Constants.Parameters.page] = params.page
                _parameters[Constants.Parameters.includeAdult] = params.includeAdult
                
            case .checkListItemStatus(let params):
                _parameters[Constants.Parameters.movieId] = params.movieId
            case .createList(let params):
                _parameters[Constants.Parameters.name] = params.name
                _parameters[Constants.Parameters.description] = params.description
                _parameters[Constants.Parameters.language] = params.language
                _parameters[Constants.Parameters.sessionId] = params.sessionId
            case .addListItem(let params):
                _parameters[Constants.Parameters.mediaId] = params.mediaId
                _parameters[Constants.Parameters.sessionId] = params.sessionId
            case .removeListItem(let params):
                _parameters[Constants.Parameters.mediaId] = params.mediaId
                _parameters[Constants.Parameters.sessionId] = params.sessionId
            case .clearList(let params):
                _parameters[Constants.Parameters.sessionId] = params.sessionId
                _parameters[Constants.Parameters.confirm] = true
            case .deleteList(let params):
                _parameters[Constants.Parameters.sessionId] = params.sessionId
            case .getMovieDetail(let params):
                if params.appendToResponse.count > 0 {
                    _parameters[Constants.Parameters.appendToResponse] = params.appendToResponse.map({"\($0.rawValue)"}).joined(separator: ",")
                }
                var imageLanguage = "null"
                if let includeImageLanguage = params.includeImageLanguage {
                    imageLanguage = "\(includeImageLanguage),\(imageLanguage)"
                }
                _parameters[Constants.Parameters.includeImageLanguage] = imageLanguage
                
                _parameters[Constants.Parameters.page] = params.page
            case .getMovieAlternativeTitles(let params):
                if let country = params.country {
                    _parameters[Constants.Parameters.country] = country
                }
            case .getMovieImages(let params):
                if let includeImageLanguage = params.includeImageLanguage {
                    _parameters[Constants.Parameters.includeImageLanguage] = includeImageLanguage
                }
            case .getMovieRecommendations(let params):
                _parameters[Constants.Parameters.page] = params.page
            case .getMovieSimilar(let params):
                _parameters[Constants.Parameters.page] = params.page
            case .getMovieReviews(let params):
                _parameters[Constants.Parameters.page] = params.page
            case .getMovieLists(let params):
                _parameters[Constants.Parameters.page] = params.page
            case .rateMovie(let params):
                if let sessionId = params.sessionId {
                    _parameters[Constants.Parameters.sessionId] = sessionId
                }
                
                if let guestSessionId = params.guestSessionId {
                    _parameters[Constants.Parameters.guestSessionId] = guestSessionId
                }
                
                _parameters[Constants.Parameters.value] = params.value
            case .deleteMovieRating(let params):
                if let sessionId = params.sessionId {
                    _parameters[Constants.Parameters.sessionId] = sessionId
                }
                
                if let guestSessionId = params.guestSessionId {
                    _parameters[Constants.Parameters.guestSessionId] = guestSessionId
                }
            case .getMovieNowPlaying(let params):
                _parameters[Constants.Parameters.page] = params.page
                _parameters[Constants.Parameters.region] = params.region
            case .getMoviePopular(let params):
                _parameters[Constants.Parameters.page] = params.page
                _parameters[Constants.Parameters.region] = params.region
            case .getMovieTopRated(let params):
                _parameters[Constants.Parameters.page] = params.page
                _parameters[Constants.Parameters.region] = params.region
            case .getMovieUpcoming(let params):
                _parameters[Constants.Parameters.page] = params.page
                _parameters[Constants.Parameters.region] = params.region
            case .getPersonChanges(let params):
                _parameters[Constants.Parameters.page] = params.page
                _parameters[Constants.Parameters.startDate] = params.startDate
                _parameters[Constants.Parameters.endDate] = params.endDate
            case .getPersonTaggedImages(let params):
                _parameters[Constants.Parameters.page] = params.page
            case .getPersonPopular(let page):
                _parameters[Constants.Parameters.page] = page
            case .searchCompanies(let params):
                _parameters[Constants.Parameters.page] = params.page
                _parameters[Constants.Parameters.query] = params.query
            case .searchCollections(let params):
                _parameters[Constants.Parameters.page] = params.page
                _parameters[Constants.Parameters.query] = params.query
            case .searchKeywords(let params):
                _parameters[Constants.Parameters.page] = params.page
                _parameters[Constants.Parameters.query] = params.query
            case .searchMovies(let params):
                _parameters[Constants.Parameters.page] = params.page
                _parameters[Constants.Parameters.query] = params.query
                if let includeAdult = params.includeAdult {
                    _parameters[Constants.Parameters.includeAdult] = includeAdult
                }
                
                if let year = params.year {
                    _parameters[Constants.Parameters.year] = year
                }
                
                if let primaryReleaseYear = params.primaryReleaseYear {
                    _parameters[Constants.Parameters.primaryReleaseYear] = primaryReleaseYear
                }
                
                if let region = params.region {
                    _parameters[Constants.Parameters.region] = region
                }
            case .searchAll(let params):
                _parameters[Constants.Parameters.page] = params.page
                _parameters[Constants.Parameters.query] = params.query
                if let includeAdult = params.includeAdult {
                    _parameters[Constants.Parameters.includeAdult] = includeAdult
                }
                
                if let region = params.region {
                    _parameters[Constants.Parameters.region] = region
                }
            case .searchPeople(let params):
                _parameters[Constants.Parameters.page] = params.page
                _parameters[Constants.Parameters.query] = params.query
                if let includeAdult = params.includeAdult {
                    _parameters[Constants.Parameters.includeAdult] = includeAdult
                }
                
                if let region = params.region {
                    _parameters[Constants.Parameters.region] = region
                }
            case .searchTV(let params):
                _parameters[Constants.Parameters.page] = params.page
                _parameters[Constants.Parameters.query] = params.query
                if let includeAdult = params.includeAdult {
                    _parameters[Constants.Parameters.includeAdult] = includeAdult
                }
                
                if let firstAirDateYear = params.firstAirDateYear {
                    _parameters[Constants.Parameters.firstAirDateYear] = firstAirDateYear
                }
            case .getTVDetail(let params):
                if params.appendToResponse.count > 0 {
                    _parameters[Constants.Parameters.appendToResponse] = params.appendToResponse.map({"\($0.rawValue)"}).joined(separator: ",")
                }
                var imageLanguage = "null"
                if let includeImageLanguage = params.includeImageLanguage {
                    imageLanguage = "\(includeImageLanguage),\(imageLanguage)"
                }
                _parameters[Constants.Parameters.includeImageLanguage] = imageLanguage
                
                _parameters[Constants.Parameters.page] = params.page
            case .getTVChanges(let params):
                _parameters[Constants.Parameters.page] = params.page
                _parameters[Constants.Parameters.startDate] = params.startDate
                _parameters[Constants.Parameters.endDate] = params.endDate
            case .rateTV(let params):
                if let sessionId = params.sessionId {
                    _parameters[Constants.Parameters.sessionId] = sessionId
                }
                
                if let guestSessionId = params.guestSessionId {
                    _parameters[Constants.Parameters.guestSessionId] = guestSessionId
                }
                
                _parameters[Constants.Parameters.value] = params.value
            case .deleteTVRating(let params):
                if let sessionId = params.sessionId {
                    _parameters[Constants.Parameters.sessionId] = sessionId
                }
                
                if let guestSessionId = params.guestSessionId {
                    _parameters[Constants.Parameters.guestSessionId] = guestSessionId
                }
            case .getTVRecommendations(let params):
                _parameters[Constants.Parameters.page] = params.page
            case .getTVAiringToday(let params):
                _parameters[Constants.Parameters.page] = params.page
                if let timezone = params.timezone {
                    _parameters[Constants.Parameters.timezone] = timezone
                }
            case .getTVOnTheAir(let page):
                _parameters[Constants.Parameters.page] = page
            case .getTVPopular(let page):
                _parameters[Constants.Parameters.page] = page
            case .getTVTopRated(let page):
                _parameters[Constants.Parameters.page] = page
                
            case .getTVSeasonAccountStates(let params):
                if let sessionId = params.sessionId {
                    _parameters[Constants.Parameters.sessionId] = sessionId
                }
                
                if let guestSessionId = params.guestSessionId {
                    _parameters[Constants.Parameters.guestSessionId] = guestSessionId
                }
                
            case .getTVEpisodeAccountStates(let params):
                if let sessionId = params.sessionId {
                    _parameters[Constants.Parameters.sessionId] = sessionId
                }
                
                if let guestSessionId = params.guestSessionId {
                    _parameters[Constants.Parameters.guestSessionId] = guestSessionId
                }
                
            case .rateTVEpisode(let params):
                if let sessionId = params.sessionId {
                    _parameters[Constants.Parameters.sessionId] = sessionId
                }
                
                if let guestSessionId = params.guestSessionId {
                    _parameters[Constants.Parameters.guestSessionId] = guestSessionId
                }
                
                _parameters[Constants.Parameters.value] = params.value
            case .deleteTVEpisodeRating(let params):
                if let sessionId = params.sessionId {
                    _parameters[Constants.Parameters.sessionId] = sessionId
                }
                
                if let guestSessionId = params.guestSessionId {
                    _parameters[Constants.Parameters.guestSessionId] = guestSessionId
                }
                
            default:
                break
            }
            return _parameters
        }
    }
}
