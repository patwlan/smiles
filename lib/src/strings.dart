//
// String extensions
//
extension Strings on String {
  // Counts the number of occurrences of a search term in a string.
  int count(String searchTerm) {
    return RegExp(searchTerm, caseSensitive: false).allMatches(this).length;
  }

  // Returns the string if it is not empty, otherwise returns null.
  String? nullIfEmpty() {
    return isEmpty ? null : this;
  }

  // Returns the substring after the first occurrence of delimiter.
  String substringAfter(Pattern delimiter) {
    return substring(indexOf(delimiter) + 1);
  }
}
