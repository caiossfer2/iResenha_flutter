class ActivityModel {
  final String key;
  final String name;
  final String type;
  final double acessibility;
  final double price;
  final int participants;

  ActivityModel(this.key, this.name, this.type, this.acessibility, this.price,
      this.participants);

  factory ActivityModel.fromJson(Map m) {
    return ActivityModel(m['key'], m['activity'], m['type'], m['accessibility'],
        m['price'], m['participants']);
  }
}
