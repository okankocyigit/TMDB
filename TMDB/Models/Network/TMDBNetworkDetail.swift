public struct TMDBNetworkDetail: Codable {
    public let headquarters: String?
    public let homepage: String?
    public let id: Int
    public let name, originCountry: String

    public enum CodingKeys: String, CodingKey {
        case headquarters, homepage, id, name
        case originCountry = "origin_country"
    }
}
