extension TMDB {
    public class Genres {
        public class func get(type: TMDBDataType, completion: @escaping (Result<TMDBGenres, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getGenreList(type: type), completion: completion)
        }
    }
}
