enum LanguageType {
  arabic,
  english,
}

const String arabic = "ar";
const String english = "en";

extension LanguageManagerExtention on LanguageType {
  String getLanguage() {
    switch (this) {
      case LanguageType.arabic:
        return arabic;

      case LanguageType.english:
        return english;
    }
  }
}
