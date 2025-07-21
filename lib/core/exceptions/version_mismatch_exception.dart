class VersionMismatchException implements Exception {
  final String expectedVersion;
  final String foundVersion;

  const VersionMismatchException({
    required this.expectedVersion,
    required this.foundVersion,
  });

  @override
  String toString() {
    return 'VersionMismatchException: Expected $expectedVersion, but found $foundVersion';
  }
}
