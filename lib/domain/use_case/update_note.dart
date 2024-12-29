// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:note_app_di/domain/model/note.dart';
import 'package:note_app_di/domain/repository/note_repository.dart';

class UpdateNote {
  NoteRepository repository;
  UpdateNote(this.repository);

  Future<void> call(Note note) async {
    await repository.updatetNote(note);
  }
}
