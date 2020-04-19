extension TMDB {
    public class Certifications {
        public class func get(with type: TMDBDataType, completion: @escaping (Result<TMDBCertifications, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getCertifications(type: type), completion: completion)
        }
    }
}
