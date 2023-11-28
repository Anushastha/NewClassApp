import 'package:flutter/material.dart';
import 'package:newclassapp/app/common/display_student_view.dart';

import '../model/student.dart';

class ListOutputView extends StatefulWidget {
  const ListOutputView({super.key});

  @override
  State<ListOutputView> createState() => _ListOutputViewState();
}

class _ListOutputViewState extends State<ListOutputView> {
  List<Student> lstStudents = [];

  @override
  void didChangeDependencies() {
    lstStudents = ModalRoute.of(context)!.settings.arguments as List<Student>;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student List View'),
        centerTitle: true,
      ),
      body: Expanded(
        child: DisplayStudentView(
                lstStudents: lstStudents,
              ),
      ),
    );
  }
}
