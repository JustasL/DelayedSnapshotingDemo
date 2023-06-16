import XCTest
import SnapshotTesting
@testable import DemoUIKit

final class DemoUIKitTests: XCTestCase {

    func testDelayedSnapshoting() throws {
        let vc = DemoViewController()
        
        assertSnapshot(
            matching: vc,
            as: .wait(for: 2, on: .image(on: .iPhone13))
        )
    }
}
