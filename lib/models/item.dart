class Item {
  final int id;
  final String name;
  final String imageUrl;
  final int price;
  final String city;
  final String province;
  final int rating;
  final String duration;

  Item(
      {this.id = 0,
      this.name = '',
      this.imageUrl = '',
      this.price = 0,
      this.city = '',
      this.province = '',
      this.rating = 1,
      this.duration = ''});
}
