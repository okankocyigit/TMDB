extension TMDB {
    public class TVEpisodes {
        public class func get(id: Int, seasonNumber: Int, episodeNumber: Int, completion: @escaping (Result<TMDBTVEpisode, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVEpisodeDetail(id: id, seasonNumber: seasonNumber, episodeNumber: episodeNumber), completion: completion)
        }
        
        public class func getAccountStates(id: Int, seasonNumber: Int, episodeNumber: Int, sessionId: String? = nil, guestSessionId: String? = nil, completion: @escaping (Result<TMDBTVEpisodeAccountStates, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVEpisodeAccountStates(id: id, seasonNumber: seasonNumber, episodeNumber: episodeNumber, sessionId: sessionId, guestSessionId: guestSessionId), completion: completion)
        }
        
        public class func getCredits(id: Int, seasonNumber: Int, episodeNumber: Int, completion: @escaping (Result<TMDBTVEpisodeCredits, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVEpisodeCredits(id: id, seasonNumber: seasonNumber, episodeNumber: episodeNumber), completion: completion)
        }
        
        public class func getExternalIDs(id: Int, seasonNumber: Int, episodeNumber: Int, completion: @escaping (Result<TMDBTVEpisodeExternalIDs, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVEpisodeExternalIDs(id: id, seasonNumber: seasonNumber, episodeNumber: episodeNumber), completion: completion)
        }
        
        public class func getImages(id: Int, seasonNumber: Int, episodeNumber: Int, completion: @escaping (Result<TMDBTVEpisodeImages, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVEpisodeImages(id: id, seasonNumber: seasonNumber, episodeNumber: episodeNumber), completion: completion)
        }
        
        public class func rate(id: Int, value: Double, seasonNumber: Int, episodeNumber: Int, guestSessionId: String? = nil, sessionId: String? = nil, completion: @escaping (Result<TMDBResponse, Error>) -> Void) -> URLSessionTask? {
            return request(with: .rateTVEpisode(id: id, value: value, seasonNumber: seasonNumber, episodeNumber: episodeNumber, guestSessionId: guestSessionId, sessionId: sessionId), completion: completion)
        }
        
        public class func deleteRating(id: Int, seasonNumber: Int, episodeNumber: Int, guestSessionId: String? = nil, sessionId: String? = nil, completion: @escaping (Result<TMDBResponse, Error>) -> Void) -> URLSessionTask? {
            return request(with: .deleteTVEpisodeRating(id: id, seasonNumber: seasonNumber, episodeNumber: episodeNumber, guestSessionId: guestSessionId, sessionId: sessionId), completion: completion)
        }
        
        public class func getTranslations(id: Int, seasonNumber: Int, episodeNumber: Int, completion: @escaping (Result<TMDBTranslations<TMDBTVEpisodeTranslationData>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVEpisodeTranslations(id: id, seasonNumber: seasonNumber, episodeNumber: episodeNumber), completion: completion)
        }
        
        public class func getVideos(id: Int, seasonNumber: Int, episodeNumber: Int, completion: @escaping (Result<TMDBListResult<TMDBVideo>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVEpisodeVideos(id: id, seasonNumber: seasonNumber, episodeNumber: episodeNumber), completion: completion)
        }
    }
}
