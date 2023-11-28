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
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(),
      itemCount: lstStudents.length,
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 100,
          width: double.infinity,
          child: Card(
            color: Colors.amber,
            child: Center(
              child: Text(
                ' ${lstStudents[index].fname} ${lstStudents[index].lname}',
              ),
            ),
          ),
        );
        // return Text('asd');
      },
    );
  }
}

//   ListTile(
//   leading: const Icon(Icons.person_rounded),
//   title: Text(
//       ' ${lstStudents[index].fname} ${lstStudents[index].lname}'),
//   subtitle: Text(lstStudents[index].city),
//   // trailing: Wrap(
//   //   children: [
//   //     IconButton(
//   //       icon: const Icon(Icons.edit),
//   //       onPressed: () {
//   //         setState(() {
//   //           // lstStudents.removeAt(index);
//   //         });
//   //       },
//   //     ),
//   //     IconButton(
//   //       icon: const Icon(Icons.delete),
//   //       onPressed: () {
//   //         setState(() {
//   //           lstStudents.removeAt(index);
//   //         });
//   //       },
//   //     ),
//   //   ],
//   // ),
// );
