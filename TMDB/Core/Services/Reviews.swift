extension TMDB {
    public class Reviews {
        public class func get(id: String, completion: @escaping (Result<TMDBReview, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getReview(id: id), completion: completion)
        }
    }
}
