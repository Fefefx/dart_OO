class Student {
  String _name = '';
  final List<double> _notes = [];

  Student(this._name);

  void setName(String name) {
    _name = name;
  }

  String getName() {
    return _name;
  }

  List<double> getNotes() {
    return _notes;
  }

  void addNote(double note) {
    _notes.add(note);
  }

  double returnAverage() {
    var media =
        _notes.reduce((value, element) => value + element) / _notes.length;
    return media.isNaN ? 0 : media;
  }

  bool approved(double courtNote) {
    return returnAverage() >= courtNote;
  }
}
