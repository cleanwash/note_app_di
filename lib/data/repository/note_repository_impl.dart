// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:note_app_di/data/data_source/note_db.dart';
import 'package:note_app_di/domain/model/note.dart';
import 'package:note_app_di/domain/repository/note_repository.dart';

class NoteRepositoryImpl implements NoteRepository {
  final NoteDb db;
  NoteRepositoryImpl(this.db);

  @override
  Future<void> deleteNote(Note note) {
    // TODO: implement deleteNote
    throw UnimplementedError();
  }

  @override
  Future<Note> getNoteById(int id) {
    // TODO: implement getNoteById
    throw UnimplementedError();
  }

  @override
  Future<List<Note>> getNotes() {
    // TODO: implement getNotes
    throw UnimplementedError();
  }

  @override
  Future<void> insertNote(Note note) {
    // TODO: implement insertNote
    throw UnimplementedError();
  }

  @override
  Future<void> updatetNote(Note note) {
    // TODO: implement updatetNote
    throw UnimplementedError();
  }
}
