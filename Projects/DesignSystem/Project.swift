import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "DesignSystem",
    product: .app,
    resources: ["Resources/**"],
    infoPlist: .file(path: "Support/info.plist")
)
