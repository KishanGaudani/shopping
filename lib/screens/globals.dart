class Details {
  String name = "";
  String image = "";
  int price = 0;

  Details({required this.name, required this.price, required this.image});
}

List<Details> productList = [
  Details(
      name: "Vagabond sack", price: 120, image: "assets/images/vagabond.jpg"),
  Details(
      name: "Stella Sunglasses", price: 58, image: "assets/images/vincent.jpg"),
  Details(name: "Whitney belt", price: 35, image: "assets/images/fab.jpg"),
  Details(name: "Garden strand", price: 98, image: "assets/images/garden.jpg"),
  Details(name: "Strut Earings", price: 34, image: "assets/images/muti.jpg"),
  Details(name: "Weave Keyring", price: 16, image: "assets/images/weave.jpg"),
  Details(name: "Cloth", price: 45, image: "assets/images/cloth.jpg"),
  Details(
      name: "golden necklace",
      price: 160,
      image: "assets/images/goladen nechlace.jpg"),
  Details(
      name: "Handmade",
      price: 56,
      image: "assets/images/handmade-painting.jpg"),
  Details(
      name: "Sofa",
      price: 100,
      image: "assets/images/antalya-3-seater-sofa.png"),
  Details(name: "Tables", price: 99, image: "assets/images/tabels.jpg"),
];

List<Details> cart = [
  Details(name: "Weave Keyring", price: 16, image: "assets/images/weave.jpg"),
];
