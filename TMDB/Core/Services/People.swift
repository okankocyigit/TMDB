extension TMDB {
    public class People {
        public class func get(id: Int, completion: @escaping (Result<TMDBPersonDetail, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getPerson(id: id), completion: completion)
        }
        
        public class func getChanges(id: Int, page: Int, startDate: Date? = nil, endDate: Date? = nil, completion: @escaping (Result<TMDBChanges, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getPersonChanges(id: id, page: page, startDate: startDate, endDate: endDate), completion: completion)
        }
        
        public class func getMovieCredits(id: Int, completion: @escaping (Result<TMDBPersonMovieCredits, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getPersonMovieCredits(id: id), completion: completion)
        }
        
        public class func getTVCredits(id: Int, completion: @escaping (Result<TMDBPersonTVCredits, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getPersonTVCredits(id: id), completion: completion)
        }
        
        public class func getCombinedCredits(id: Int, completion: @escaping (Result<TMDBPersonCredits, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getPersonCombinedCredits(id: id), completion: completion)
        }
        
        public class func getExternalIDs(id: Int, completion: @escaping (Result<TMDBPersonExternalIDs, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getPersonExternalIDs(id: id), completion: completion)
        }
        
        public class func getImages(id: Int, completion: @escaping (Result<TMDBPersonImages, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getPersonImages(id: id), completion: completion)
        }
        
        public class func getTaggedImages(id: Int, page: Int, completion: @escaping (Result<TMDBPagedListResult<TMDBTaggedImage>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getPersonTaggedImages(id: id, page: page), completion: completion)
        }
        
        public class func getTranslations(id: Int, completion: @escaping (Result<TMDBTranslations<TMDBPersonTranslationData>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getPersonTranslations(id: id), completion: completion)
        }
        
        public class func getLatest(completion: @escaping (Result<TMDBPersonDetail, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getPersonLatest, completion: completion)
        }
        
        public class func getPopular(page: Int, completion: @escaping (Result<TMDBPagedListResult<TMDBPerson>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getPersonPopular(page: page), completion: completion)
        }
        
    }
}
