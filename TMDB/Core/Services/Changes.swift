extension TMDB {
    public class Changes {
        public class func get(with type: TMDBChangesDataType, page: Int = 1, startDate: Date? = nil, endDate: Date? = nil, completion: @escaping (Result<TMDBPagedListResult<TMDBChange>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getChanges(type: type, page: page, startDate: startDate, endDate: endDate), completion: completion)
        }
    }
}
