class Position {
  double lat;
  double lon;
  Position(this.lat, this.lon);
}

Position customPositionFromJson(List<Object?> input) => Position(input[0] as double, input[1] as double);
dynamic customPositionToJson(Position p) => [p.lat, p.lon];
