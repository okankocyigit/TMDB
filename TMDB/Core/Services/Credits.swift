extension TMDB {
    public class Credits {
        public class func get(id: String, completion: @escaping (Result<TMDBCredit, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getCreditDetail(id: id), completion: completion)
        }
    }
}
