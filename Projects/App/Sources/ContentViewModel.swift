import Foundation
import Moya

class ContentViewModel: ObservableObject {
    private let provider = MoyaProvider<PostService>()
    
    func getPosts() {
        provider.request(.getPosts) { response in
            switch response {
            case .success(let result):
                guard let data = try? JSONDecoder().decode([BaseModel].self, from: result.data)
                else { return }
                print(data)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func postPosts() {
        provider.request(.postPosts(request: .init(title: "ㅇㅇ", body: "ㅇㅇ", userId: 1))) { response in
            switch response {
            case .success(let result):
                guard let data = try? JSONDecoder().decode(BaseModel.self, from: result.data)
                else { return }
                print(data)
            case .failure(let error):
                print(error)
            }
        }
    }
}
