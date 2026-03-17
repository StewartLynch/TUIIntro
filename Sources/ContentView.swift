import TUIkit

struct ContentView: View {
    @State private var count = 0
    @State private var name = ""
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Text(name.isEmpty ? "What is your name?" : "Hello \(name)")
                    .foregroundStyle(.palette.accent)
                    .bold()
                TextField("Enter your name", text: $name)
                Text("Count is \(count)")
                    .foregroundStyle(.palette.foregroundSecondary)
                HStack {
                    Button("Increment") {
                        count += 1
                    }
                    // Button("Clear") {
                    //     count = 0
                    // }
                }
            }
            Spacer()
        }
        .padding()
        .statusBarItems {
            StatusBarItem(shortcut: "q", label: "quit")
            // StatusBarItem(shortcut: "tab", label: "Change Focus")
            StatusBarItem(shortcut: "r", label: "Reset") {
                count = 0
            }
        }
        .appHeader{ 
            HStack {
                Text("TUI Intro")
                    .bold()
                Spacer()
                Text("v1.0")
                    .dim()
            }
         }
    }
}
