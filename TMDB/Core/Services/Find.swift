extension TMDB {
    public class Find {
        public class func get(externalId: String, externalSource: TMDBExternalSource, completion: @escaping (Result<TMDBFind, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getFind(externalId: externalId, externalSource: externalSource), completion: completion)
        }
    }
}
