An example of ViewModel-first navigation in SwiftUI. ViewModels own navigation completely — no View knows another View exists.

## Stack

- **SwiftUI** — iOS 17+
- **Factory** — dependency injection
- **@Observable** — state management

## Structure

- **BaseViewModel** — base class with params and lifecycle hooks (`onAppear`, `onDisappear`, `task`)
- **NavigationService** — push, present, pop, dismiss — called from ViewModels by type
- **PageBootstrapper** — maps ViewModel types to Views, wires lifecycle, single registration per page
- **IdentifiableView** — wraps AnyView to satisfy SwiftUI navigation requirements

## Example

```swift
@Observable
final class FeedViewModel: BaseViewModel {
    @Injected(\.newsService) var newsService: NewsServiceProtocol
    @Injected(\.navigationService) var navigationService: NavigationServiceProtocol

    var posts: [Post] = []

    override func task() async {
        posts = await newsService.fetch()
    }

    func userDidSelectPost(id: String) {
        navigationService.push(DetailViewModel.self, params: id)
    }

    func userDidTapFilters() {
        navigationService.present(FiltersViewModel.self)
    }
}
```

## Navigation

```swift
navigationService.push(DetailViewModel.self, params: id)
navigationService.present(FiltersViewModel.self)
navigationService.pop()
navigationService.dismiss()
```

## Registering a page

```swift
register(FeedViewModel.self) { vm in
    AnyView(FeedView(viewModel: vm))
}
```
