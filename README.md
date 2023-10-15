# 🔄 ArchitectureVam

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
![Static Badge](https://img.shields.io/badge/iOS-v14-blue)
![Static Badge](https://img.shields.io/badge/Swift-5.4-orange)

## 🤔 What is Vam?
> Vam is a package for support MVI (Uni-Directional Architecture) in SwiftUI.
<img width="650" alt="스크린샷 2023-10-15 오후 1 35 16" src="https://github.com/insub4067/ArchitectureVam/assets/85481204/48d203ea-54d4-4080-8255-09982c0bfd82">

### ✔️ View
```swift
struct ContentView: VamView {
    
    typealias Action = ContentViewAction
    typealias Model = ContentViewModel
    
    let action: ContentViewAction
    @StateObject var model: ContentViewModel
    
    var body: some View {
        VStack {
            Text("\(model.count)")
            Button("Tap to increase count") {
                action.increaseCount()
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
class ContentViewAction: Action<ContentViewModel> {
    
    func increaseCount() {
        model?.count += 1
    }
}
```
### ✔️ Model
```swift
class ContentViewModel: Model {
    
    @Published var count = 0
}
```
