class Movie {
  int id;
  String title;
  String posterUrl;
  String overview;
  int releaseDate;
  List<String> genres;
  static final List<Movie> _favoriteMovies = [];

  Movie(this.id, this.title, this.posterUrl, this.overview, this.releaseDate,
      this.genres);

  static void addMovieToFavorite(Movie m) {
    _favoriteMovies.add(m);
  }

  static bool checkMovieFavorite(Movie m) {
    return _favoriteMovies.contains(m);
  }

  static List<Movie> getFavoritesMovies() {
    return _favoriteMovies;
  }
}
