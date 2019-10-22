import SwiftUI

extension Color {
	init(hex: String) {
		guard let rgb = Int(hex.replacingOccurrences(of: "#", with: "")) else {
			fatalError("Invalid hex string \"\(hex)\"")
		}
		self.init(
			red: Double((rgb >> 16) & 0xFF),
			green: Double((rgb >> 8) & 0xFF),
			blue: Double(rgb & 0xFF)
		)
	}
}
