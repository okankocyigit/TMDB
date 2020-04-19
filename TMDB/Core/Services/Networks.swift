extension TMDB {
    public class Networks {
        public class func get(id: Int, completion: @escaping (Result<TMDBNetworkDetail, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getNetworkDetail(id: id), completion: completion)
        }
        
        public class func getAlternativeNames(id: Int, completion: @escaping (Result<TMDBListResult<TMDBAlternativeName>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getNetworkAlternativeNames(id: id), completion: completion)
        }
        
        public class func getImages(id: Int, completion: @escaping (Result<TMDBNetworkImages, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getNetworkImages(id: id), completion: completion)
        }
    }
}
