import SwiftUI

struct ContentView: View {
    @State private var isPresentingCamera = false

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Button(action: {
                isPresentingCamera = true
            }) {
                Text("Open Camera")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
        .sheet(isPresented: $isPresentingCamera) {
            CameraViewControllerRepresentable()
        }
    }
}

#Preview {
    ContentView()
}

