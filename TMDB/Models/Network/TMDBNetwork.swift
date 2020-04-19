public struct TMDBNetwork: Codable {
    public let id: Int
    public let logoPath, name, originCountry: String

    public enum CodingKeys: String, CodingKey {
        case id
        case logoPath = "logo_path"
        case name
        case originCountry = "origin_country"
    }
}
