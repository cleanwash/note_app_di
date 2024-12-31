import 'package:flutter/material.dart';
import 'package:note_app_di/ui/colors.dart';

class AddEditNoteScreen extends StatefulWidget {
  const AddEditNoteScreen({super.key});

  @override
  State<AddEditNoteScreen> createState() => _AddEditNoteScreenState();
}

class _AddEditNoteScreenState extends State<AddEditNoteScreen> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  final List<Color> noteColors = [
    roseBud,
    primrose,
    wisteria,
    skyBlue,
    illusion,
    darkGray,
    lightBlue
  ];

  Color _color = roseBud;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.save),
      ),
      body: AnimatedContainer(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: 16,
            top: 48,
          ),
          color: _color,
          duration: Duration(milliseconds: 500),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: noteColors
                    .map((color) => InkWell(
                        onTap: () {
                          setState(() {
                            _color = color;
                          });
                        },
                        child: _buildBackgroundColor(
                          color: color,
                          selected: _color == color,
                        )))
                    .toList(),
              ),
              TextField(
                controller: _titleController,
                maxLines: 1,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: darkGray,
                    ),
                decoration: InputDecoration(
                  hintText: '제목을 입력하세요',
                  border: InputBorder.none,
                ),
              ),
              TextField(
                controller: _contentController,
                maxLines: null,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: darkGray,
                    ),
                decoration: InputDecoration(
                  hintText: '내용을 입력하세요',
                  border: InputBorder.none,
                ),
              ),
            ],
          )),
    );
  }

  Widget _buildBackgroundColor({
    required Color color,
    required bool selected,
  }) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 4.0,
            spreadRadius: 1,
          )
        ],
        border: selected
            ? Border.all(
                color: Colors.black,
                width: 1.0,
              )
            : null,
      ),
    );
  }
}
