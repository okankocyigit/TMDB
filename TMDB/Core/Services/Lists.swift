extension TMDB {
    public class Lists {
        public class func get(id: String, completion: @escaping (Result<TMDBListDetail, Error>) -> Void) -> URLSessionTask? {
            return request(with: .getListDetail(id: id), completion: completion)
        }
        
        public class func checkItemStatus(listId: String, movieId: Int, completion: @escaping (Result<TMDBListItemStatus, Error>) -> Void) -> URLSessionTask? {
            return request(with: .checkListItemStatus(listId: listId, movieId: movieId), completion: completion)
        }
        
        public class func create(sessionId: String, name: String, description: String, language: String, completion: @escaping (Result<TMDBCreateList, Error>) -> Void) -> URLSessionTask? {
            return request(with: .createList(sessionId: sessionId, name: name, description: description, language: language), completion: completion)
        }
        
        public class func addItem(sessionId: String, listId: String, mediaId: Int, completion: @escaping (Result<TMDBResponse, Error>) -> Void) -> URLSessionTask? {
            return request(with: .addListItem(sessionId: sessionId, listId: listId, mediaId: mediaId), completion: completion)
        }
        
        public class func removeItem(sessionId: String, listId: String, mediaId: Int, completion: @escaping (Result<TMDBResponse, Error>) -> Void) -> URLSessionTask? {
            return request(with: .removeListItem(sessionId: sessionId, listId: listId, mediaId: mediaId), completion: completion)
        }
        
        public class func clear(sessionId: String, listId: String, completion: @escaping (Result<TMDBResponse, Error>) -> Void) -> URLSessionTask? {
            return request(with: .clearList(sessionId: sessionId, listId: listId), completion: completion)
        }
        
        public class func delete(sessionId: String, listId: String, completion: @escaping (Result<TMDBResponse, Error>) -> Void) -> URLSessionTask? {
            return request(with: .deleteList(sessionId: sessionId, listId: listId), completion: completion)
        }
        
    }
}
