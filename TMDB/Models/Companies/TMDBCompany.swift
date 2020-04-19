public struct TMDBCompany: Codable {
    public let id: Int
    public let originCountry, logoPath: String?
    public let name: String

    public enum CodingKeys: String, CodingKey {
        case id
        case logoPath = "logo_path"
        case name
        case originCountry = "origin_country"
    }
}

public struct TMDBCompanyDetail: Codable {
    public let description, headquarters, homepage: String?
    public let id: Int
    public let logoPath, parentCompany, originCountry: String?
    public let name: String

    public enum CodingKeys: String, CodingKey {
        case description = "description"
        case headquarters, homepage, id
        case logoPath = "logo_path"
        case name
        case originCountry = "origin_country"
        case parentCompany = "parent_company"
    }
}
