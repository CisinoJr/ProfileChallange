//
//  WatchedMoviesView.swift
//  ProfileChallange
//
//  Created by Cisino Junior on 17/06/23.
//

import SwiftUI

struct WatchedMoviesView: View {
	
	@State var title: String = "Título"
	
	var imageWidth: Int = 110
	var imageHeight: Int = 200
	
	var body: some View {
		VStack {
			Text(title)
				.frame(maxWidth: .infinity, alignment: .leading)
				.padding(.horizontal)
				.foregroundColor(.white)
			
			ScrollView(.horizontal) {
				HStack(alignment: .center) {
					ForEach(1..<10) { index in
						AsyncImage(url: URL(string: "https://picsum.photos/\(imageWidth)/\(imageHeight)")) { image in
							image
								.resizable()
								.frame(width: CGFloat(imageWidth), height: CGFloat(imageHeight))
								.cornerRadius(10)
								.id(index+1)
						} placeholder: {
							ProgressView()
								.frame(width: CGFloat(imageWidth), height: CGFloat(imageHeight))
								.progressViewStyle(CircularProgressViewStyle(tint: Color.white))
						}
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
