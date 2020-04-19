extension TMDB {
    public class Collections {
        public class func get(with id: Int, completion: @escaping (Result<TMDBCollectionDetail, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getCollection(id: id), completion: completion)
        }
        
        public class func getImages(with id: Int, completion: @escaping (Result<TMDBImages, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getCollectionImages(id: id), completion: completion)
        }
        
        public class func getTranslations(with id: Int, completion: @escaping (Result<TMDBTranslations<TMDBCollectionTranslationData>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getCollectionTranslations(id: id), completion: completion)
        }
    }
}
