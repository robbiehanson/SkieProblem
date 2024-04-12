import SwiftUI
import Shared

struct ContentView: View {
	
	@ViewBuilder
	var body: some View {
		
		VStack(alignment: HorizontalAlignment.center, spacing: 20) {
			Button {
				testOne()
			} label: {
				Text("Test #1")
			}
			
		} // </VStack>
		.padding()
	}

	func testOne() {
		print("testOne()")
		let greeting = Shared.Greeting()
		
		Task { @MainActor in
			let result = try await greeting.isOnMainThread().boolValue
			print("isOnMainThread = \(result)")
		}
	}
}
