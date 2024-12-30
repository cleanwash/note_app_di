import 'package:flutter/material.dart';
import 'package:note_app_di/domain/model/note.dart';
import 'package:note_app_di/domain/repository/note_repository.dart';
import 'package:note_app_di/presentation/add_edit_note/add_edit_event.dart';

class AddEditViewModel with ChangeNotifier {
  final NoteRepository repository;
  AddEditViewModel(this.repository);

  int _color = Colors.orange.value;
  int get color => _color;

  void onEvent(AddEditNoteEvent event) {
    event.when(
      changeColor: _changeColor,
      saveNote: _saveNote,
    );
  }

  Future<void> _changeColor(int color) async {
    _color = color;
    notifyListeners();
  }

  Future<void> _saveNote(int? id, String title, String content) async {
    if (id == null) {
      await repository.insertNote(
        Note(
          title: title,
          content: content,
          color: _color,
          timestamp: DateTime.now().millisecondsSinceEpoch,
        ),
      );
    } else {
      await repository.updatetNote(
        Note(
          title: title,
          content: content,
          color: _color,
          timestamp: DateTime.now().millisecondsSinceEpoch,
        ),
      );
    }
  }
}
