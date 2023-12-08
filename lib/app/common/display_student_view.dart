import 'package:flutter/material.dart';

import '../../model/student.dart';

class DisplayStudentView extends StatelessWidget {
  const DisplayStudentView({
    super.key,
    required this.lstStudents,
  });

  final List<Student> lstStudents;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: lstStudents.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.abc_outlined),
            title:
            Text('${lstStudents[index].fname} ${lstStudents[index].lname}'),
            subtitle: Text(lstStudents[index].city),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete),
            ),
          );
        },
      ),
    );
  }
}