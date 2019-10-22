import SwiftUI

@available(iOS 13.0, *)
public extension Color {
	init(hex: String) {
		guard let rgb = Int(hex.replacingOccurrences(of: "#", with: ""), radix: 16) else {
			fatalError("Invalid hex string \"\(hex)\"")
		}
		self.init(
			red: Double((rgb >> 16) & 0xFF)/255,
			green: Double((rgb >> 8) & 0xFF)/255,
			blue: Double(rgb & 0xFF)/255
		)
	}
}
