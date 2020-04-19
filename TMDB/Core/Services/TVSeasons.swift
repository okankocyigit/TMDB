extension TMDB {
    public class TVSeasons {
        public class func get(id: Int, seasonNumber: Int, completion: @escaping (Result<TMDBTVSeasonDetail, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVSeasonDetail(id: id, seasonNumber: seasonNumber), completion: completion)
        }
        
        public class func getAccountStates(id: Int, seasonNumber: Int, sessionId: String? = nil, guestSessionId: String? = nil, completion: @escaping (Result<TMDBListResult<TMDBTVSeasonAccountStates>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVSeasonAccountStates(id: id, seasonNumber: seasonNumber, sessionId: sessionId, guestSessionId: guestSessionId), completion: completion)
        }
        
        public class func getCredits(id: Int, seasonNumber: Int, completion: @escaping (Result<TMDBTVCredits, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVSeasonCredits(id: id, seasonNumber: seasonNumber), completion: completion)
        }
        
        public class func getExternalIDs(id: Int, seasonNumber: Int, completion: @escaping (Result<TMDBTVSeasonExternalIDs, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVSeasonExternalIDs(id: id, seasonNumber: seasonNumber), completion: completion)
        }
        
        public class func getImages(id: Int, seasonNumber: Int, completion: @escaping (Result<TMDBTVSeasonImages, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVSeasonImages(id: id, seasonNumber: seasonNumber), completion: completion)
        }
        
        public class func getVideos(id: Int, seasonNumber: Int, completion: @escaping (Result<TMDBListResult<TMDBVideo>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVSeasonVideos(id: id, seasonNumber: seasonNumber), completion: completion)
        }
        
    }
}
