import 'package:note_app_di/domain/model/note.dart';

abstract interface class NoteRepository {
  Future<List<Note>> getNotes();
  Future<Note?> getNoteById(int id);
  Future<void> insertNote(Note note);
  Future<void> updatetNote(Note note);
  Future<void> deleteNote(Note note);
}
