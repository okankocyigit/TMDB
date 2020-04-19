extension TMDB {
    @discardableResult
    internal class func request<T: Decodable>(with router: ApiRouter, completion: @escaping (Result<T, Error>) -> Void) ->  URLSessionTask? {
        let session = URLSession.shared
        var urlRequest: URLRequest
        
        do {
            urlRequest = try router.asURLRequest()
        } catch let error {
            completion(.failure(TMDBError.jsonParsingError(error)))
            if Constants.debugMode {
                Log("Error", message: error)
            }
            return nil
        }
        
        if Constants.debugMode {
            if let url = urlRequest.url {
                Log("Requested URL", message: url)
            }
        }
        
        let task = session.dataTask(with: urlRequest, completionHandler: { data, response, error in
            if let error = error {
                completion(.failure(TMDBError.networkError(error)))
                if Constants.debugMode {
                    Log("Error", message: error)
                }
                return
            }
            
            guard let data = data else {
                completion(.failure(TMDBError.dataNotFound))
                if Constants.debugMode {
                    Log("Error", message: TMDBError.dataNotFound)
                }
                return
            }
            
            do {
                let decodedObject = try JSONDecoder().decode(T.self, from: data)
                completion(.success(decodedObject))
            } catch let decodeError {
                do {
                    let decodedObject = try JSONDecoder().decode(TMDBRequestError.self, from: data)
                    if let apiError = decodedObject.errors.first {
                        completion(.failure(TMDBError.apiError(apiError)))
                        if Constants.debugMode {
                            Log("Error", message: apiError)
                        }
                    }
                } catch {
                    completion(.failure(TMDBError.jsonParsingError(decodeError as! DecodingError)))
                    if Constants.debugMode {
                        Log("Error", message: decodeError)
                    }
                }
            }
        })
        
        task.resume()
        return task
    }
}
