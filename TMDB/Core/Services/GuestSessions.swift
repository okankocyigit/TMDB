extension TMDB {
    public class GuestSessions {
        public class func getRatedMovies(sessionId: String, page: Int, sortBy: TMDBSortBy<TMDBAccountListsSortByParameters>? = nil, completion: @escaping (Result<TMDBPagedListResult<TMDBMovie>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getGuestSessionRatedMovies(sessionId: sessionId, page: page, sortBy: sortBy), completion: completion)
        }
        
        public class func getRatedTVShows(sessionId: String, page: Int, sortBy: TMDBSortBy<TMDBAccountListsSortByParameters>? = nil, completion: @escaping (Result<TMDBPagedListResult<TMDBTV>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getGuestSessionRatedTVShows(sessionId: sessionId, page: page, sortBy: sortBy), completion: completion)
        }
        
        public class func getRatedTVEpisodes(sessionId: String, page: Int, sortBy: TMDBSortBy<TMDBAccountListsSortByParameters>? = nil, completion: @escaping (Result<TMDBPagedListResult<TMDBTVEpisode>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getGuestSessionRatedTVEpisodes(sessionId: sessionId, page: page, sortBy: sortBy), completion: completion)
        }
    }
}
