public struct TMDBChange: Codable {
    let id: Int
    let adult: Bool?
}

public struct TMDBChanges: Codable {
    let changes: [TMDBChangeDetail]
}

public struct TMDBChangeDetail: Codable {
    let key: String
    let items: [TMDBChangeItem]
}

public struct TMDBChangeItem: Codable {
    let id, action, time, iso639_1: String
    let iso3166_1: String
    let value: TMDBChangeValue
    let originalValue: Int?

    public enum CodingKeys: String, CodingKey {
        case id, action, time
        case iso639_1 = "iso_639_1"
        case iso3166_1 = "iso_3166_1"
        case value
        case originalValue = "original_value"
    }
}

enum TMDBChangeValue: Codable {
    case integer(Int)
    case string(String)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Int.self) {
            self = .integer(x)
            return
        }
        if let x = try? container.decode(String.self) {
            self = .string(x)
            return
        }
        throw DecodingError.typeMismatch(TMDBChangeValue.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for Value"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .integer(let x):
            try container.encode(x)
        case .string(let x):
            try container.encode(x)
        }
    }
}
