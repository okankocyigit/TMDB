public struct TMDBList: Codable {
    public let resultDescription: String
    public let favoriteCount, id, itemCount: Int
    public let iso639_1: String
    public let listType: String
    public let name: String
    public let posterPath: String?

    public enum CodingKeys: String, CodingKey {
        case resultDescription = "description"
        case favoriteCount = "favorite_count"
        case id
        case itemCount = "item_count"
        case iso639_1 = "iso_639_1"
        case listType = "list_type"
        case name
        case posterPath = "poster_path"
    }
}
