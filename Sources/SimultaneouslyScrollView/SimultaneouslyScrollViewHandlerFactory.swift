import Foundation

/// Factory class to create `SimultaneouslyScrollViewHandler` instance
@available(iOS 13, *)
@available(tvOS, unavailable)
@available(macOS, unavailable)
public class SimultaneouslyScrollViewHandlerFactory {
#if os(iOS)
    /// Creates a new `SimultaneouslyScrollViewHandler` instance
    /// - Returns: A new `SimultaneouslyScrollViewHandler` instance
    public static func create(maxScrollPosition: CGPoint? = nil) -> SimultaneouslyScrollViewHandler {
        DefaultSimultaneouslyScrollViewHandler(maxScrollPosition: maxScrollPosition)
    }
#else
    public static func create() -> SimultaneouslyScrollViewHandler {
        // Stub for other platforms
        fatalError()
    }
#endif
}
