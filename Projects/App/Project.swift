import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "App",
    product: .app,
    dependencies: [
        .Moya
    ],
    resources: ["Resources/**"],
    infoPlist: .file(path: "Support/info.plist")
)
