import 'package:flutter/material.dart';

import '../app/routes/app_route.dart';
import '../model/student.dart';


class StudentListView extends StatefulWidget {
  const StudentListView({super.key});

  @override
  State<StudentListView> createState() => _StudentListViewState();
}

class _StudentListViewState extends State<StudentListView> {
  final _formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();

  String? city;

  final items = [
    const DropdownMenuItem(
      value: 'Kathmandu',
      child: Text('Kathmandu'),
    ),
    const DropdownMenuItem(
      value: 'Chitwan',
      child: Text('Chitwan'),
    ),
    const DropdownMenuItem(
      value: 'Pokhara',
      child: Text('Pokhara'),
    ),
  ];

  List<Student> lstStudents = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Student List View',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  controller: firstNameController,
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                    floatingLabelStyle: TextStyle(
                      color: Colors.blueGrey,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: lastNameController,
                  decoration: const InputDecoration(
                    labelText: 'Last Name',
                    floatingLabelStyle: TextStyle(
                      color: Colors.blueGrey,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField(
                  icon: const Icon(Icons.arrow_downward),
                  items: items,
                  onChanged: (value) {
                    setState(() {
                      city = value;
                    });
                  },
                  hint: const Text('Select City'),
                  decoration: const InputDecoration(
                    labelText: 'Select City',
                    border: OutlineInputBorder(),
                    floatingLabelStyle: TextStyle(
                      color: Colors.blueGrey,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                    ),
                  ),
                  validator: (value) {
                    if (value == null) {
                      return 'Please select city';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate() && city != null) {
                        Student student = Student(
                          fname: firstNameController.text,
                          lname: lastNameController.text,
                          city: city!,
                        );
                        setState(() {
                          lstStudents.add(student);
                        });
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blueGrey),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 15),
                      ),
                    ),
                    child: const Text(
                      'Add',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoute.studentListAllRoute,
                          arguments: lstStudents);
                      // if (_formKey.currentState!.validate() && city != null) {
                      //   Student student = Student(
                      //     fname: firstNameController.text,
                      //     lname: lastNameController.text,
                      //     city: city!,
                      //   );
                      //   setState(() {
                      //     lstStudents.add(student);
                      //   });
                      // }
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 178, 192, 198)),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                      ),
                    ),
                    child: const Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: lstStudents.isNotEmpty
                        ? ListView.builder(
                      padding: const EdgeInsets.all(10),
                      itemCount: lstStudents.length,
                      itemBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 200,
                          width: double.infinity,
                          child: Card(
                            color: Colors.blueGrey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                  ' ${lstStudents[index].fname} ${lstStudents[index].lname}'),
                            ),
                            // subtitle: Text(lstStudents[index].city),
                          ),
                        );
                        // return ListTile(
                        //   leading: const Icon(Icons.person_rounded),
                        //   title: Text(
                        //       ' ${lstStudents[index].fname} ${lstStudents[index].lname}'),
                        //   subtitle: Text(lstStudents[index].city),
                        //   trailing: Wrap(
                        //     children: [
                        //       IconButton(
                        //         icon: const Icon(Icons.edit),
                        //         onPressed: () {
                        //           setState(() {
                        //             // lstStudents.removeAt(index);
                        //           });
                        //         },
                        //       ),
                        //       IconButton(
                        //         icon: const Icon(Icons.delete),
                        //         onPressed: () {
                        //           setState(() {
                        //             lstStudents.removeAt(index);
                        //           });
                        //         },
                        //       ),
                        //     ],
                        //   ),
                        // );
                      },
                    )
                        : const Text('No data')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


//card ma height dina mildaina so wrap with sizedbox garne