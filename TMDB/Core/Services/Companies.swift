extension TMDB {
    public class Companies {
        public class func get(with id: Int, completion: @escaping (Result<TMDBCompanyDetail, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getCompanyDetail(id: id), completion: completion)
        }
        
        public class func getAlternativeNames(with id: Int, completion: @escaping (Result<TMDBListResult<TMDBAlternativeName>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getCompanyAlternativeNames(id: id), completion: completion)
        }
        
        public class func getImages(with id: Int, completion: @escaping (Result<TMDBCompanyImages, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getCompanyImages(id: id), completion: completion)
        }
    }
}
