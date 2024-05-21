import Foundation

public func MainTask(operation: @escaping @MainActor () async throws -> Void) {
    Task { @MainActor in
        try await operation()
    }
}

public func MainTask(operation: @escaping @MainActor () async -> Void) {
    Task { @MainActor in
        await operation()
    }
}
