import 'package:flutter/material.dart';
import 'package:newclassapp/app/common/my_snackbar.dart';

class ExpandedFlexibleView extends StatefulWidget {
  const ExpandedFlexibleView({super.key});

  @override
  State<ExpandedFlexibleView> createState() => _ExpandedFlexibleViewState();
}

class _ExpandedFlexibleViewState extends State<ExpandedFlexibleView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              //.5 = 50% of the screen
              //dynamic height
              height: MediaQuery.of(context).size.height * .5,
              width: double.infinity,
              color: Colors.red,
              child: ElevatedButton(
                onPressed: () {
                  showMySnackbar(
                      context,
                    'Button 1',
                    color: Colors.green,
                  );

                  // ScaffoldMessenger.of(context).showSnackBar(
                  //     const SnackBar(
                  //       content: Text('Button 1'),
                  //       duration: Duration(seconds: 3),
                  //       backgroundColor: Colors.green,
                  //       behavior: SnackBarBehavior.floating,
                  //     ),
                  // );
                },
                child: const Text(
                  'Button 1',
                ),
              ),
            ),
            const SizedBox(height: 10),

            //Flexible = out of screen ya overflow bhayo bhane screen jati cha adjust bhaera bascha
            //by default fit = loose huncha (if space cha bhane ni adjust hudaina. Afno jati cha tyai bascha)
            //tight = available space liu
            //flexfit.tight = Expanded

            // Flexible(
            //   fit: FlexFit.tight,
            //   // fit: FlexFit.loose,
            //   child: Container(
            //     height: 200,
            //     color: Colors.green,
            //   ),
            // ),

            Expanded(
              child: Container(
                width: double.infinity,
                height: 200,
                color: Colors.green,
                child: ElevatedButton(
                  onPressed: () {
                    showMySnackbar(context, 'Button 2');
                    // ScaffoldMessenger.of(context).showSnackBar(
                    //   const SnackBar(
                    //     content: Text('Button 2'),
                    //     duration: Duration(seconds: 3),
                    //     backgroundColor: Colors.red,
                    //     behavior: SnackBarBehavior.floating,
                    //   ),
                    // );
                  },
                  child: const Text(
                    'Button 2',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
