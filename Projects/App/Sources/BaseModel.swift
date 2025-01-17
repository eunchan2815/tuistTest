import Foundation

struct BaseModel: Decodable {
    let body: String
    let id : Int
    let title: String
    let userId: Int
}

struct BaseRequest: Encodable {
    let title: String
    let body: String
    let userId: Int
}
