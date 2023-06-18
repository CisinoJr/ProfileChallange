//
//  ContentView.swift
//  ProfileChallange
//
//  Created by Cisino Junior on 04/06/23.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		ZStack(alignment: .top) {
			Rectangle()
				.fill(Color.black)
				.ignoresSafeArea(.all, edges: .bottom)
			
			Image("Wallpaper")
				.resizable()
				.frame(maxHeight: 230)
				.ignoresSafeArea()
			
			AsyncImage(
				url: URL(string: "https://avatars.githubusercontent.com/u/16160637?v=4")
			)
			.frame(width: 150, height: 150)
			.clipShape(Circle())
			.padding(.top, 90)
			
			VStack(spacing: 30){
				WatchedMoviesView(title: "Assistidos")
				WatchedMoviesView(title: "Na Fila")
			}.offset(y: 280)
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
