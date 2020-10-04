class Note {
  int _id;
  String _title;

  Note(this._title);
  Note.withId(this._id, this._title);

// All the getters
  int get id => _id;
  String get title => _title;

  // All the setter
  set title(String newTitle) {
    if (newTitle.length <= 255) {
      this._title = newTitle;
    }
  }

  //Used to save and retrive from database

//convert note object to map object
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    return map;
  }

  Note.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._title = map['title'];
}
}