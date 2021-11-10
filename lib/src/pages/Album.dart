class Album{
  String name;
  String telefono;
  String image;
  String facebook;
  String url;

  Album(this.name,this.telefono,this.image,this.facebook,this.url);

  static List<Album> albums(){
    return [
    Album("Café Mukulum","961 267 6635","assets/mukul.jpg","@cafemukulum","https://www.facebook.com/cafemukulum/photos"),
    Album("Damian Jimenez Hernandez","961 267 6635","assets/Damian.jpg","@damian.jimenez.96","https://www.facebook.com/damian.jimenez.96"),
    Album("Moni Solorzano","9191604515","assets/Moni.jpg","@moniqasolorzano","https://www.facebook.com/moniqasolorzano"),
    Album("Jaime Adrian Guillen","919 160 4515","assets/Jaime.jpg","@jimmy.guillen.338","https://www.facebook.com/jimmy.guillen.338/"),
  ];
  }

}