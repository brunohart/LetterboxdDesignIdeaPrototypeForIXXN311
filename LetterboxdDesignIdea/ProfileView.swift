import SwiftUI

struct ProfileView: View {
    @State private var selectedTab: String = "Profile"
    let headerHeight: CGFloat = 110
    
    var stickyHeader: some View {
        VStack(spacing: 12) {
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
            
            HStack(spacing: 16) {
                ForEach(["Profile", "Diary", "Lists", "Watchlist"], id: \.self) { tab in
                    tabButton(for: tab)
                }
            }
            .padding(.horizontal)
            .background(Color(UIColor.systemGray6).opacity(0.2))
            .clipShape(RoundedRectangle(cornerRadius: 8))
        }
        .padding(.horizontal)
        .padding(.top, 10)
        .padding(.bottom, 12)
        .background(Color.black)
        .shadow(color: .black.opacity(0.2), radius: 10, y: 5)
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
                Capsule()
                    .fill(isSelected ? Color.gray.opacity(0.4) : Color.clear)
            )
            .onTapGesture {
                selectedTab = tab
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
                        
                        // Removed previous top HStack and tab bar
                        
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

                            ScrollView(.horizontal, showsIndicators: false) {
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
                        }

                        // Recent Activity
                        VStack(alignment: .leading, spacing: 8) {
                            Text("RECENT ACTIVITY")
                                .font(.caption)
                                .fontWeight(.semibold)
                                .foregroundColor(.gray)
                                .padding(.leading)

                            ScrollView(.horizontal, showsIndicators: false) {
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
                                        .fill(Color.blue)
                                        .frame(width: 12, height: height)
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
                        
                        Spacer(minLength: 32)
                    }
                    .padding(.top, headerHeight)
                }
                
                stickyHeader
            }
        }
    }
}

#Preview {
    ProfileView()
}
