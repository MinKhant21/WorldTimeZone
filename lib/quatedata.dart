class QuateData {
  final String? name;
  final int? age;
  final String location;  // Add a non-nullable type

  QuateData({this.name, this.age, required this.location});  // Mark location as required
}