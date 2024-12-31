import 'package:flutter/material.dart';
import 'package:note_app_di/domain/model/note.dart';
import 'package:note_app_di/presentation/add_edit_note/add_edit_note_screen.dart';
import 'package:note_app_di/presentation/notes/components/note_item.dart';
import 'package:note_app_di/ui/colors.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text(
            'Your note',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.sort),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddEditNoteScreen(),
              ),
            );
          },
          child: Icon(Icons.add),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              NoteItem(
                note: Note(
                    title: 'title 1',
                    content: 'content 1',
                    color: wisteria.value,
                    timestamp: 1),
              )
            ],
          ),
        ));
  }
}
