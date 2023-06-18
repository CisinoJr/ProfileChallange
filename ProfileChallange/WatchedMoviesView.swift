//
//  WatchedMoviesView.swift
//  ProfileChallange
//
//  Created by Cisino Junior on 17/06/23.
//

import SwiftUI

struct WatchedMoviesView: View {
	
	@State var title: String = "Título"
	
	var body: some View {
		VStack(spacing: 5) {
			Text(title)
				.frame(maxWidth: .infinity, alignment: .topLeading)
				.padding(.horizontal)
				.foregroundColor(.white)
			
			ScrollView(.horizontal) {
				HStack(alignment: .center) {
					ForEach(1..<10) { index in
						AsyncImage(url: URL(string: "https://picsum.photos/110/150"))
							.frame(width: 110, height: 150)
							.id(index+1)
					}
				}.padding(.leading, 20)
				
			}
		}
	}
}

struct WatchedMoviesView_Previews: PreviewProvider {
	static var previews: some View {
		WatchedMoviesView()
	}
}
