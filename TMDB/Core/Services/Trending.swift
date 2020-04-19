extension TMDB {
    public class Trending {
        public class func get(mediaType: TMDBTrendingMediaType, timeWindow: TMDBTimeWindow, completion: @escaping (Result<TMDBPagedListResult<TMDBTrend>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTrending(mediaType: mediaType, timeWindow: timeWindow), completion: completion)
        }
    }
}
