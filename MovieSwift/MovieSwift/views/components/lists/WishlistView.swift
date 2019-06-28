//
//  WishlistView.swift
//  MovieSwift
//
//  Created by Thomas Ricouard on 28/06/2019.
//  Copyright © 2019 Thomas Ricouard. All rights reserved.
//

import SwiftUI
import SwiftUIFlux

struct WishlistView : View {
    @EnvironmentObject var store: Store<AppState>
    
    var movies: [Int] {
        store.state.moviesState.wishlist.map{ $0 }
    }
    
    var body: some View {
        MoviesList(movies: movies, displaySearch: false, onDelete: { (movie) in
            self.store.dispatch(action: MoviesActions.RemoveFromWishlist(movie: movie))
        })
    }
}

#if DEBUG
struct WishlistView_Previews : PreviewProvider {
    static var previews: some View {
        WishlistView()
    }
}
#endif
