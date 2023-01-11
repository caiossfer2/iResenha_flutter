class ActivityModel {
  final int key;
  final String name;
  final String type;
  final String acessibility;
  final String price;
  final String participants;

  ActivityModel(this.key, this.name, this.type, this.acessibility, this.price,
      this.participants);

  factory ActivityModel.fromJson(Map m) {
    return ActivityModel(m['id'], m['name'], m['type'], m['acessibility'],
        m['price'], m['participants']);
  }
}
