class Movie {
  String name;
  String description;
  String image;
  Movie(this.name, this.description, this.image);
}

List<Movie> movies = [
  Movie("Teste 1", "Este é um teste de um filme americano 1",
      "assets/images/3.jpg"),
  Movie("Teste 2", "Este é um teste de um filme americano 2",
      "assets/images/2.jpg"),
  Movie("Teste 1", "Este é um teste de um filme americano 2",
      "assets/images/4.jpg")
];
