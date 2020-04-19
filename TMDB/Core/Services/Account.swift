extension TMDB {
    public class Account {
        public class func getDetail(sessionId: String, completion: @escaping (Result<TMDBAccount, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getAccountDetail(sessionId: sessionId), completion: completion)
        }
        
        public class func getLists(sessionId: String, page: Int, completion: @escaping (Result<TMDBPagedListResult<TMDBAccountList>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getAccountLists(sessionId: sessionId, page: page), completion: completion)
        }
        
        public class func getFavoriteMovies(sessionId: String, page: Int, sortBy: TMDBSortBy<TMDBAccountListsSortByParameters>? = nil, completion: @escaping (Result<TMDBPagedListResult<TMDBMovie>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getAccountFavoriteMovies(sessionId: sessionId, page: page, sortBy: sortBy), completion: completion)
        }
        
        public class func getFavoriteTVShows(sessionId: String, page: Int, sortBy: TMDBSortBy<TMDBAccountListsSortByParameters>? = nil, completion: @escaping (Result<TMDBPagedListResult<TMDBTV>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getAccountFavoriteTVShows(sessionId: sessionId, page: page, sortBy: sortBy), completion: completion)
        }
        
        public class func markMediaAsFavorite(sessionId: String, mediaId: Int, mediaType: TMDBAccountMediaType, isFavorite: Bool, completion: @escaping (Result<TMDBResponse, Error>) -> Void) -> URLSessionTask? {
            return request(with: .markMediaAsFavorite(sessionId: sessionId, mediaId: mediaId, mediaType: mediaType, isFavorite: isFavorite), completion: completion)
        }
        
        public class func getRatedMovies(sessionId: String, page: Int, sortBy: TMDBSortBy<TMDBAccountListsSortByParameters>? = nil, completion: @escaping (Result<TMDBPagedListResult<TMDBMovie>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getAccountRatedMovies(sessionId: sessionId, page: page, sortBy: sortBy), completion: completion)
        }
        
        public class func getRatedTVShows(sessionId: String, page: Int, sortBy: TMDBSortBy<TMDBAccountListsSortByParameters>? = nil, completion: @escaping (Result<TMDBPagedListResult<TMDBTV>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getAccountRatedTVShows(sessionId: sessionId, page: page, sortBy: sortBy), completion: completion)
        }
        
        public class func getRatedTVEpisodes(sessionId: String, page: Int, sortBy: TMDBSortBy<TMDBAccountListsSortByParameters>? = nil, completion: @escaping (Result<TMDBPagedListResult<TMDBTVEpisode>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getAccountRatedTVEpisodes(sessionId: sessionId, page: page, sortBy: sortBy), completion: completion)
        }
        
        public class func getWatchListMovies(sessionId: String, page: Int, sortBy: TMDBSortBy<TMDBAccountListsSortByParameters>? = nil, completion: @escaping (Result<TMDBPagedListResult<TMDBMovie>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getAccountWatchListMovies(sessionId: sessionId, page: page, sortBy: sortBy), completion: completion)
        }
        
        public class func getWatchListTVShows(sessionId: String, page: Int, sortBy: TMDBSortBy<TMDBAccountListsSortByParameters>? = nil, completion: @escaping (Result<TMDBPagedListResult<TMDBTV>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getAccountWatchListTVShows(sessionId: sessionId, page: page, sortBy: sortBy), completion: completion)
        }
        
        public class func addMediaToWatchList(sessionId: String, mediaId: Int, mediaType: TMDBAccountMediaType, inWatchList: Bool, completion: @escaping (Result<TMDBResponse, Error>) -> Void) -> URLSessionTask? {
            return request(with: .addMediaToWatchList(sessionId: sessionId, mediaId: mediaId, mediaType: mediaType, inWatchList: inWatchList), completion: completion)
        }
    }
}
