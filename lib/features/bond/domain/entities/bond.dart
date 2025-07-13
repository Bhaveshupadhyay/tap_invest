class Bond {
  final String logo;
  final String isin;
  final String rating;
  final String companyName;
  final List<String> tags;

  const Bond({
    required this.logo,
    required this.isin,
    required this.rating,
    required this.companyName,
    required this.tags,
  });
}
