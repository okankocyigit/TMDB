extension TMDB {
    public class Configuration {
        public class func get(completion: @escaping (Result<TMDBConfiguration, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getConfiguration, completion: completion)
        }
        
        public class func getCountries(completion: @escaping (Result<[TMDBCountry], Error>) -> Void) -> URLSessionTask? {
            return request(with: .getConfigurationCountries, completion: completion)
        }
        
        public class func getJobs(completion: @escaping (Result<[TMDBJob], Error>) -> Void) -> URLSessionTask? {
            return request(with: .getConfigurationJobs, completion: completion)
        }
        
        public class func getLanguages(completion: @escaping (Result<[TMDBLanguage], Error>) -> Void) -> URLSessionTask? {
            return request(with: .getConfigurationLanguages, completion: completion)
        }
        
        public class func getPrimaryTranslations(completion: @escaping (Result<[String], Error>) -> Void) -> URLSessionTask? {
            return request(with: .getConfigurationPrimaryTranslations, completion: completion)
        }
        
        public class func getTimezones(completion: @escaping (Result<[TMDBTimezone], Error>) -> Void) -> URLSessionTask? {
            return request(with: .getConfigurationTimezones, completion: completion)
        }
    }
}
