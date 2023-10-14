# 🔄 ArchitectureArchitectureVam

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
![Static Badge](https://img.shields.io/badge/iOS-v14-blue)
![Static Badge](https://img.shields.io/badge/Swift-5.4-orange)

## 🤔 What is ArchitectureArchitectureVam?
> ArchitectureVam is a package for support to use MVI (Uni-Directional Architecture) in SwiftUI.

### ✔️ View
```swift
struct ContentView: ArchitectureVamView {

    typealias Action = ContentViewAction
    typealias Model = ContentViewModel
    
    let action: ContentViewAction
    @StateObject var model: ContentViewModel
    
    var body: some View {
        VStack {
            Text("\(model.count)")
            Button("Tap to Increase Count") {
                action.didTapButton()
            }
        }
    }
    
    static func build() -> ContentView {
        let model = ContentViewModel()
        let action = ContentViewAction(model: model)
        return .init(action: action, model: model)
    }
}
```
### ✔️ Action
```swift
class ContentViewAction: ArchitectureVamAction<ContentViewModel> {
    
    func didTapButton() {
        model?.count += 1
    }
}
```
### ✔️ Model
```swift
class ContentViewModel: ArchitectureVamModel {
    
    @Published var count = 0
}
```
