// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:note_app_di/data/data_source/note_db_helper.dart';
import 'package:note_app_di/domain/model/note.dart';
import 'package:note_app_di/domain/repository/note_repository.dart';

class NoteRepositoryImpl implements NoteRepository {
  final NoteDbHelper db;
  NoteRepositoryImpl(this.db);

  @override
  Future<void> deleteNote(Note note) async {
    await db.deleteNote(note);
  }

  @override
  Future<Note?> getNoteById(int id) async {
    return await db.getNoteById(id);
  }

  @override
  Future<List<Note>> getNotes() async {
    return await db.getNotes();
  }

  @override
  Future<void> insertNote(Note note) async {
    return await db.insertNote(note);
  }

  @override
  Future<void> updatetNote(Note note) async {
    return await db.updateNote(note);
  }
}
