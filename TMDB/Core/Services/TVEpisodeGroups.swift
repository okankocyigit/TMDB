extension TMDB {
    public class TVEpisodeGroups {
        public class func get(id: String, completion: @escaping (Result<TMDBTVEpisodeGroupsDetail, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getTVEpisodeGroup(id: id), completion: completion)
        }
    }
}
