import SwiftUI

struct ContentView: View {
    @State private var selected = 0
    
    var body: some View {
        TabView(selection: $selected) {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(0)
            
            DataView()
                .tabItem {
                    Image(systemName: "doc")
                    Text("Data")
                }.tag(1)
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }.tag(2)
        }
    }
}

