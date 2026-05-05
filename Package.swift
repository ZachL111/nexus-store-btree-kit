// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "nexus-store-btree-kit",
    products: [.executable(name: "nexus-store-btree-kit", targets: ["App"])],
    targets: [.executableTarget(name: "App", path: "src")]
)
