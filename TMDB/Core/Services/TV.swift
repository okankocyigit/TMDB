extension TMDB {
    public class TV {
        public class func get(id: Int, completion: @escaping (Result<TMDBTVDetail, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVDetail(id: id), completion: completion)
        }
        
        public class func getAccountStates(id: Int, sessionId: String? = nil, guestSessionId: String? = nil, completion: @escaping (Result<TMDBTVAccountStates, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVAccountStates(id: id, sessionId: sessionId, guestSessionId: guestSessionId), completion: completion)
        }
        
        public class func getAlternativeTitles(id: Int, completion: @escaping (Result<TMDBListResult<TMDBAlternativeTitle>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVAlternativeTitles(id: id), completion: completion)
        }
        
        public class func getContentRatings(id: Int, completion: @escaping (Result<TMDBListResult<TMDBTVContentRating>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVContentRatings(id: id), completion: completion)
        }
        
        public class func getCredits(id: Int, completion: @escaping (Result<TMDBTVCredits, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVCredits(id: id), completion: completion)
        }
        
        public class func getEpisodeGroups(id: Int, completion: @escaping (Result<TMDBListResult<TMDBTVEpisodeGroups>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVEpisodeGroups(id: id), completion: completion)
        }
        
        public class func getExternalIDs(id: Int, completion: @escaping (Result<TMDBTVExternalIDs, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVExternalIDs(id: id), completion: completion)
        }
        
        public class func getImages(id: Int, completion: @escaping (Result<TMDBImages, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVImages(id: id), completion: completion)
        }
        
        public class func getKeywords(id: Int, completion: @escaping (Result<TMDBListResult<TMDBKeyword>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVKeywords(id: id), completion: completion)
        }
        
        public class func rate(id: Int, value: Double, guestSessionId: String? = nil, sessionId: String? = nil, completion: @escaping (Result<TMDBResponse, Error>) -> Void) -> URLSessionTask? {
            return request(with: .rateTV(id: id, value: value, guestSessionId: guestSessionId, sessionId: sessionId), completion: completion)
        }
        
        public class func deleteRating(id: Int, guestSessionId: String? = nil, sessionId: String? = nil, completion: @escaping (Result<TMDBResponse, Error>) -> Void) -> URLSessionTask? {
            return request(with: .deleteTVRating(id: id, guestSessionId: guestSessionId, sessionId: sessionId), completion: completion)
        }
        
        public class func getRecommendations(id: Int, page: Int, completion: @escaping (Result<TMDBPagedListResult<TMDBTV>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVRecommendations(id: id, page: page), completion: completion)
        }
        
        public class func getReviews(id: Int, page: Int, completion: @escaping (Result<TMDBPagedListResult<TMDBReview>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVReviews(id: id, page: page), completion: completion)
        }
        
        public class func getScreenedTheatrically(id: Int, completion: @escaping (Result<TMDBListResult<TMDBTVScreenedTheatrically>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVScreenedTheatrically(id: id), completion: completion)
        }
        
        public class func getSimilar(id: Int, page: Int, completion: @escaping (Result<TMDBPagedListResult<TMDBTV>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVSimilar(id: id, page: page), completion: completion)
        }
        
        public class func getTranslations(id: Int, completion: @escaping (Result<TMDBTranslations<TMDBTVTranslationData>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVTranslations(id: id), completion: completion)
        }
        
        public class func getVideos(id: Int, completion: @escaping (Result<TMDBListResult<TMDBVideo>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVVideos(id: id), completion: completion)
        }
        
        public class func getLatest(completion: @escaping (Result<TMDBTVDetail, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVLatest, completion: completion)
        }
        
        public class func getAiringToday(page: Int, timezone: String? = nil, completion: @escaping (Result<TMDBPagedListResult<TMDBTV>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVAiringToday(page: page, timezone: timezone), completion: completion)
        }
        
        public class func getOnTheAir(page: Int, completion: @escaping (Result<TMDBPagedListResult<TMDBTV>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVOnTheAir(page: page), completion: completion)
        }
        
        public class func getPopular(page: Int, completion: @escaping (Result<TMDBPagedListResult<TMDBTV>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVPopular(page: page), completion: completion)
        }
        
        public class func getTopRated(page: Int, completion: @escaping (Result<TMDBPagedListResult<TMDBTV>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVTopRated(page: page), completion: completion)
        }
    }
}
