enum SystemType {
  android(1),
  ios(2),
  web(3);

  const SystemType(this.mapToInt);

  final int mapToInt;
}
