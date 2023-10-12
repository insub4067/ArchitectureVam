# 🔄 VAM

## 🤔 What is Vam?
> Vam is a package for support to use MVI (Uni-Directional Architecture) in SwiftUI.

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
class ContentViewAction: Action<ContentViewModel> {
    
    func didTapButton() {
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
