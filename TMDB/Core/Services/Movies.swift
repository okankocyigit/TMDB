extension TMDB {
    public class Movies {
        public class func get(id: Int, completion: @escaping (Result<TMDBMovie, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getMovieDetail(id: id), completion: completion)
        }
        
        public class func getAlternativeTitles(id: Int, country: String? = nil, completion: @escaping (Result<TMDBAlternativeTitles, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getMovieAlternativeTitles(id: id, country: country), completion: completion)
        }
        
        public class func getMovieCredits(id: Int, completion: @escaping (Result<TMDBCredits, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getMovieCredits(id: id), completion: completion)
        }
        
        public class func getExternalIDs(id: Int, completion: @escaping (Result<TMDBExternalIDs, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getMovieExternalIDs(id: id), completion: completion)
        }
        
        public class func getImages(id: Int, includeImageLanguage: String? = nil, completion: @escaping (Result<TMDBImages, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getMovieImages(id: id, includeImageLanguage: includeImageLanguage), completion: completion)
        }
        
        public class func getKeywords(id: Int, completion: @escaping (Result<TMDBKeywords, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getMovieKeywords(id: id), completion: completion)
        }
        
        public class func getReleaseDates(id: Int, completion: @escaping (Result<TMDBListResult<TMDBReleaseDates>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getMovieReleaseDates(id: id), completion: completion)
        }
        
        public class func getVideos(id: Int, completion: @escaping (Result<TMDBListResult<TMDBVideo>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getMovieVideos(id: id), completion: completion)
        }
        
        public class func getTranslations(id: Int, completion: @escaping (Result<TMDBTranslations<TMDBMovieTranslationData>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getMovieTranslations(id: id), completion: completion)
        }
        
        public class func getRecommendations(id: Int, page: Int, completion: @escaping (Result<TMDBPagedListResult<TMDBMovie>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getMovieRecommendations(id: id, page: page), completion: completion)
        }
        
        public class func getSimilar(id: Int, page: Int, completion: @escaping (Result<TMDBPagedListResult<TMDBMovie>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getMovieSimilar(id: id, page: page), completion: completion)
        }
        
        public class func getReviews(id: Int, page: Int, completion: @escaping (Result<TMDBPagedListResult<TMDBReview>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getMovieReviews(id: id, page: page), completion: completion)
        }
        
        public class func getLists(id: Int, page: Int, completion: @escaping (Result<TMDBPagedListResult<TMDBList>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getMovieLists(id: id, page: page), completion: completion)
        }
        
        public class func rate(id: Int, value: Double, guestSessionId: String? = nil, sessionId: String? = nil, completion: @escaping (Result<TMDBResponse, Error>) -> Void) -> URLSessionTask? {
            return request(with: .rateMovie(id: id, value: value, guestSessionId: guestSessionId, sessionId: sessionId), completion: completion)
        }
        
        public class func deleteRating(id: Int, guestSessionId: String? = nil, sessionId: String? = nil, completion: @escaping (Result<TMDBResponse, Error>) -> Void) -> URLSessionTask? {
            return request(with: .deleteMovieRating(id: id, guestSessionId: guestSessionId, sessionId: sessionId), completion: completion)
        }
        
        public class func getLatest(completion: @escaping (Result<TMDBMovie, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getMovieLatest, completion: completion)
        }
        
        public class func getNowPlaying(page: Int, region: String? = nil, completion: @escaping (Result<TMDBPagedListResult<TMDBMovie>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getMovieNowPlaying(page: page, region: region), completion: completion)
        }
        
        public class func getPopular(page: Int, region: String? = nil, completion: @escaping (Result<TMDBPagedListResult<TMDBMovie>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getMoviePopular(page: page, region: region), completion: completion)
        }
        
        public class func getTopRated(page: Int, region: String? = nil, completion: @escaping (Result<TMDBPagedListResult<TMDBMovie>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getMovieTopRated(page: page, region: region), completion: completion)
        }
        
        public class func getUpcoming(page: Int, region: String? = nil, completion: @escaping (Result<TMDBPagedListResult<TMDBMovie>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getMovieUpcoming(page: page, region: region), completion: completion)
        }
    }
}
