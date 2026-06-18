import SwiftUI

struct Agent: Identifiable {
    let id = UUID()
    let name: String
    let role: String
}

struct ContentView: View {
    private let agents = [
        Agent(name: "Boss", role: "Điều phối IPA"),
        Agent(name: "Nami", role: "Quản lý Fanpage"),
        Agent(name: "Usopp", role: "Group Seeding"),
        Agent(name: "Sabo", role: "Facebook Research"),
        Agent(name: "Morgans", role: "Social Planner"),
        Agent(name: "Franky", role: "Automation Engineer"),
        Agent(name: "Brook", role: "Report"),
        Agent(name: "Chopper", role: "Account Health"),
        Agent(name: "Robin", role: "Knowledge Manager"),
        Agent(name: "Law", role: "Compliance / Safety")
    ]

    var body: some View {
        NavigationView {
            List(agents) { agent in
                VStack(alignment: .leading, spacing: 4) {
                    Text(agent.name)
                        .font(.headline)
                    Text(agent.role)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .padding(.vertical, 4)
            }
            .navigationTitle("IPA Agents")
        }
    }
}

#Preview {
    ContentView()
}
