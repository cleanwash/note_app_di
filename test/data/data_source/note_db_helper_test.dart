import 'package:flutter_test/flutter_test.dart';
import 'package:note_app_di/data/data_source/note_db_helper.dart';
import 'package:note_app_di/domain/model/note.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  test('db test', () async {
    final db = await databaseFactoryFfi.openDatabase(inMemoryDatabasePath);

    await db.execute(
        'CREATE TABLE note(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, contet TEXT, color INTEGER, timestamp INTEGER)');

    final noteDbHelper = NoteDbHelper(db);

    await noteDbHelper.insertNote(Note(
      title: 'test',
      content: 'test',
      color: 1,
      timestamp: 1,
    ));
    expect((await noteDbHelper.getNotes()).length, 1);

    Note? note = (await noteDbHelper.getNoteById(1))!;
    expect(note.id, 1);

    await noteDbHelper.updateNote(
      note.copyWith(title: '하오츠'),
    );
    expect(note.title, 'change');

    await noteDbHelper.deleteNote(note);
    expect((await noteDbHelper.getNotes()).length, 0);

    await db.close();
  });
}
