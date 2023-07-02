class Operation {
  late String _text;
  late String _value;

  Operation(String text, String value) {
    _text = text;
    _value = value;
  }


  String get text => _text;

  set text(String value) {
    _text = value;
  }

  @override
  String toString() {
    return "$_text - $_value";

  }

  String get value => _value;

  set value(String value) {
    _value = value;
  }
}