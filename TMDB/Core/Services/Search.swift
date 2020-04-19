extension TMDB {
    public class Search {
        public class func companies(query: String, page: Int, completion: @escaping (Result<TMDBPagedListResult<TMDBCompany>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .searchCompanies(query: query, page: page), completion: completion)
        }
        
        public class func collections(query: String, page: Int, completion: @escaping (Result<TMDBPagedListResult<TMDBCollection>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .searchCollections(query: query, page: page), completion: completion)
        }
        
        public class func keywords(query: String, page: Int, completion: @escaping (Result<TMDBPagedListResult<TMDBKeyword>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .searchKeywords(query: query, page: page), completion: completion)
        }
        
        public class func movies(query: String, includeAdult: Bool? = nil, region: String? = nil, year: Int? = nil, primaryReleaseYear: Int? = nil, page: Int = 1, completion: @escaping (Result<TMDBPagedListResult<TMDBMovie>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .searchMovies(query: query, includeAdult: includeAdult, region: region, year: year, primaryReleaseYear: primaryReleaseYear, page: page), completion: completion)
        }
        
        public class func all(query: String, includeAdult: Bool? = nil, region: String? = nil, page: Int, completion: @escaping (Result<TMDBPagedListResult<TMDBSearchResult>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .searchAll(query: query, includeAdult: includeAdult, region: region, page: page), completion: completion)
        }
        
        public class func people(query: String, includeAdult: Bool? = nil, region: String? = nil, page: Int = 1, completion: @escaping (Result<TMDBPagedListResult<TMDBPerson>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .searchPeople(query: query, includeAdult: includeAdult, region: region, page: page), completion: completion)
        }
        
        public class func tv(query: String, includeAdult: Bool? = nil, firstAirDateYear: Int? = nil, page: Int = 1, completion: @escaping (Result<TMDBPagedListResult<TMDBTV>, Error>) -> Void) -> URLSessionTask? {
            return request(with: .searchTV(query: query, includeAdult: includeAdult, firstAirDateYear: firstAirDateYear, page: page), completion: completion)
        }
    }
}
