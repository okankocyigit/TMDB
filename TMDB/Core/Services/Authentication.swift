extension TMDB {
    public class Authentication {
        public class func createGuestSession(completion: @escaping (Result<TMDBGuestSessionResult, Error>) -> Void) -> URLSessionTask? {
            return request(with: .createGuestSession, completion: completion)
        }
        
        public class func createRequestToken(completion: @escaping (Result<TMDBRequestTokenResult, Error>) -> Void) -> URLSessionTask? {
            return request(with: .createRequestToken, completion: completion)
        }
        
        public class func createSession(with requestToken: String, completion: @escaping (Result<TMDBCreateSessionResult, Error>) -> Void) -> URLSessionTask? {
            return request(with: .createSession(requestToken: requestToken), completion: completion)
        }
        
        public class func createSessionWithLogin(requestToken: String, username: String, password: String, completion: @escaping (Result<TMDBRequestTokenResult, Error>) -> Void) -> URLSessionTask? {
            return request(with: .createSessionWithLogin(requestToken: requestToken, username: username, password: password), completion: completion)
        }
        
        public class func createSessionFromV4Access(accessToken: String, completion: @escaping (Result<TMDBCreateSessionResult, Error>) -> Void) -> URLSessionTask? {
            return request(with: .createSessionFromV4Access(accessToken: accessToken), completion: completion)
        }
        
        public class func deleteSession(sessionId: String, completion: @escaping (Result<TMDBSuccessResult, Error>) -> Void) -> URLSessionTask? {
            return request(with: .deleteSession(sessionId: sessionId), completion: completion)
        }
    }
}
