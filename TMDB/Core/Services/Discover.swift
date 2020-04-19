extension TMDB {
    public class Discover {
        public class func getMovies(page: Int, params: TMDBDiscoverMovieParameters, completion: @escaping (Result<TMDBPagedListResult<TMDBMovie>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getDiscoverMovies(page: page, parameters: params), completion: completion)
        }
        
        public class func getTV(page: Int, params: TMDBDiscoverTVParameters, completion: @escaping (Result<TMDBPagedListResult<TMDBTV>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getDiscoverTV(page: page, parameters: params), completion: completion)
        }
    }
}
