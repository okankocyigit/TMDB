public struct TMDBPagedListResult<T: Codable>: Codable {
    public var results: [T]
    public let page, totalResults: Int
    public let totalPages: Int
    public let dates: Dates?

    public enum CodingKeys: String, CodingKey {
        case results, page
        case totalResults = "total_results"
        case totalPages = "total_pages"
        case dates
    }
}

public struct Dates: Codable {
    public let maximum, minimum: String
}
