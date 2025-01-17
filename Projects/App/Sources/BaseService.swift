import Moya
import SwiftUI

protocol BaseService: TargetType {
    
}

extension BaseService {
    
    var baseURL: URL {
        .init(string: "https://jsonplaceholder.typicode.com")!
    }
    
    var headers: [String : String]? {
        return ["Content-Type": "application/json"]
    }
}

enum PostService {
    case getPosts
    case postPosts( request: BaseRequest )
}

extension PostService: BaseService {
    var path: String {
        switch self {
        case .getPosts: "/posts"
        case .postPosts: "/posts"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getPosts: .get
        case .postPosts: .post
        }
    }
    
    var task: Moya.Task {
        switch self {
        case .getPosts: .requestPlain
        case .postPosts(let request): .requestJSONEncodable(request)
        }
    }
}
