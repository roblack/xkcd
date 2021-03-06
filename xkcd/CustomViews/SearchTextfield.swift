import SwiftUI

struct SearchTextfield: View {
    
    var textFieldLabel: String
    @Binding var selection: String
    
    var body: some View {
        HStack {
            SFImage(.newsPaper, prefferedSize: 24)
            TextField(textFieldLabel, text: $selection)
                .multilineTextAlignment(.center)
                .padding(.trailing, 32)
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.gray, lineWidth: 1))
        .background(Color(hex: "1C1328"))
        .padding(.horizontal, 40)
    }
}
