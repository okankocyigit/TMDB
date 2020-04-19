extension TMDB {
    public class Keywords {
        public class func get(keywordId: Int, completion: @escaping (Result<TMDBKeyword, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getKeywordDetails(id: keywordId), completion: completion)
        }
        
        public class func getMovies(keywordId: Int, page: Int, includeAdult: Bool, completion: @escaping (Result<TMDBPagedListResult<TMDBMovie>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getKeywordMovies(id: keywordId, page: page, includeAdult: includeAdult), completion: completion)
        }
    }
}
