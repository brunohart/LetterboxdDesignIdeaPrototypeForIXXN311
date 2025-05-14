import SwiftUI

struct ProfileView: View {
    @State private var selectedTab: String = "Profile"
    @State private var navigateToInvites = false
    let headerHeight: CGFloat = 80
    
    var stickyHeader: some View {
        VStack(spacing: 10) {
            HStack {
                Image(systemName: "gearshape")
                    .foregroundColor(.white)
                
                Spacer()
                
                Text("SoggyBottom_Boy")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Spacer()
                
                Image(systemName: "line.3.horizontal")
                    .foregroundColor(.white)
                
                
            }
            // the design decision to remove the diary feature at the top in place of invites I think helps to reduce clutter and improves the sense of flow as people generally habituate to navigate to the diary tag from the row view at the bottom anyway
            HStack(spacing: 2) {
                ForEach(["Profile", "Lists", "Watchlist", "Invites"], id: \.self) { tab in
                    tabButton(for: tab)
                }
            }
            .background(Color(UIColor.systemGray6).opacity(0.2))
            .clipShape(RoundedRectangle(cornerRadius: 8))
        }
        .padding(.horizontal)
        .padding(.bottom, 12)
        .background(Color.black)
        .shadow(color: .black.opacity(0.2), radius: 10, y: 8)
    }
    
    // MARK: - Subview as a private method
    @ViewBuilder
    private func tabButton(for tab: String) -> some View {
        let isSelected = selectedTab == tab
        
        Text(tab)
            .font(.subheadline)
            .fontWeight(isSelected ? .bold : .regular)
            .foregroundColor(isSelected ? .white : .gray)
            .padding(.vertical, 6)
            .padding(.horizontal, 14)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(isSelected ? Color.gray.opacity(0.4) : Color.clear)
            )
            .onTapGesture {
                selectedTab = tab
                if tab == "Invites" {
                    navigateToInvites = true
                }
            }
    }
    
    @ViewBuilder
    private func labeledRow(label: String) -> some View {
        HStack {
            Text(label)
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding(.vertical, 10)
        .padding(.horizontal)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(8)
        .onTapGesture {
            // Action placeholder
        }
    }
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                ScrollView {
                    VStack(alignment: .center, spacing: 16) {
                                                
                        // Header
                        VStack(spacing: 8) {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .foregroundColor(.gray)

                            HStack(spacing: 6) {
                                Text("PATRON")
                                    .font(.caption2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 6)
                                    .padding(.vertical, 2)
                                    .background(Color.blue)
                                    .cornerRadius(4)
                            }

                            HStack(spacing: 4) {
                                Image(systemName: "mappin.and.ellipse")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                Text("Auckland")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }

                            Text("Growing older one film at a time")
                                .font(.footnote)
                                .foregroundColor(.gray)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal)
                        }
                        .padding(.top)

                        // Favorites
                        VStack(alignment: .leading, spacing: 8) {
                            Text("FAVORITES")
                                .font(.caption)
                                .fontWeight(.semibold)
                                .foregroundColor(.gray)
                                .padding(.leading)

                                HStack(spacing: 12) {
                                    ForEach(0..<4) { _ in
                                        Rectangle()
                                            .fill(Color.gray.opacity(0.3))
                                            .frame(width: 80, height: 120)
                                            .cornerRadius(8)
                                    }
                                }
                                .padding(.horizontal)
                            
                        }

                        // Recent Activity -> small adjustment but I think it improves the design if you can just keep scrolling through maybe the last 20 posters you watched (just a nice small detail that I think really helps add a layer of enjoyment and delight) -> and because it's a pyshcology paper being able to have even more obvious access to see your recent history visually is a great way of building a sense of identity
                        VStack(alignment: .leading, spacing: 8) {
                            Text("RECENT ACTIVITY")
                                .font(.caption)
                                .fontWeight(.semibold)
                                .foregroundColor(.gray)
                                .padding(.leading)

                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 12) {
                                    ForEach(0..<20) { _ in
                                        Rectangle()
                                            .fill(Color.gray.opacity(0.3))
                                            .frame(width: 80, height: 120)
                                            .cornerRadius(8)
                                    }
                                }
                                .padding(.horizontal)
                            }
                        }
                        
                        // More activity label (now uses labeledRow for consistency)
                        labeledRow(label: "More activity")
                        
                        // Bar chart placeholder for rating distribution
                        HStack(alignment: .bottom, spacing: 8) {
                            ForEach(1...10, id: \.self) { halfStar in
                                // halfStar from 1 to 10 representing 0.5★ to 5★
                                let height = CGFloat(halfStar) * 6
                                VStack {
                                    Rectangle()
                                        .fill(Color.gray)
                                        .frame(width: 24, height: height)
                                    Text("\(Double(halfStar) * 0.5, specifier: "%.1f")★")
                                        .font(.caption2)
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                        .padding(.horizontal)
                        
                        // Labeled row sections
                        VStack(spacing: 8) {
                            labeledRow(label: "Films")
                            labeledRow(label: "Diary")
                            labeledRow(label: "Reviews")
                            labeledRow(label: "Lists")
                            labeledRow(label: "Watchlist")
                            labeledRow(label: "Likes")
                            labeledRow(label: "Tags")
                            labeledRow(label: "Following")
                            labeledRow(label: "Followers")
                            labeledRow(label: "Stats")
                        }
                        .padding(.horizontal)
                        
                    }
                    .padding(.top, headerHeight)
                }
                
                stickyHeader
            }
            .navigationDestination(isPresented: $navigateToInvites) {
                FlipCardView()
            }
        }
    }
}


#Preview {
    ProfileView()
}
