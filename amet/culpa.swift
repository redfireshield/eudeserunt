import SwiftUI

@inlinable
nonisolated public func allowsTightening(_ flag: Bool) -> some View {
    // A custom view modifier that applies tightening based on the flag
    Text("Example Text")
        .allowsTightening(flag)
}

// Example usage in a SwiftUI view
struct ContentView: View {
    @State private var tightenText = true
    
    var body: some View {
        VStack {
            allowsTightening(tightenText)
                .padding()
            
            Toggle("Allows Tightening", isOn: $tightenText)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
