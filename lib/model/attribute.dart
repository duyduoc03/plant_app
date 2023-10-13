class Attribute {
  int id;
  String colors;
  String size;
  String water;
  String light;
  int height;

  Attribute({
    required this.id,
    required this.colors,
    required this.size,
    required this.water,
    required this.light,
    required this.height,
  });
}

List<Attribute> demoAttributes = [
  Attribute(
    id: 1,
    colors: "Purple, White, Pink",
    size: "Medium",
    water: "once/week",
    light: "Indirect sunlight",
    height: 12,
  ),
  Attribute(
    id: 2,
    colors: "Green",
    size: "Large",
    water: "Water moderately",
    light: "Indirect sunlight",
    height: 24,
  ),
  Attribute(
    id: 3,
    colors: "Green",
    size: "Small",
    water: "Water sparingly.",
    light: "Direct sunlight",
    height: 8,
  ),
  Attribute(
    id: 4,
    colors: "Green, Yellow",
    size: "Medium",
    water: "Water infrequently.",
    light: "Low light",
    height: 16,
  ),
  Attribute(
    id: 5,
    colors: "Green, White",
    size: "Medium",
    water: "Water frequently.",
    light: "Indirect sunlight",
    height: 14,
  ),
];