import 'package:flutter/material.dart';

class StacksView extends StatelessWidget {
  const StacksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none, //"to overlap container"
          children: [
            // Container(
            //   height: 400,
            //   width: double.infinity,
            //   color: Colors.amber,
            //   child: const Text(
            //     'I am first container'
            //   ),
            // ),
            //
            // //Container move garnako lagi Positioned() use garne
            // Positioned(
            //     top: 1,
            //     right: 1,
            //     child: Container(
            //       height: 100,
            //       width: 100,
            //       color: Colors.green,
            //       child: const Text(
            //           'I am second container'
            //       ),
            //     ),
            // ),
            // Positioned(
            //     bottom: -30,
            //     right: 40,
            //     child: Container(
            //       height: 100,
            //       width: 100,
            //       color: Colors.red,
            //       child: const Text(
            //           'I am third container'
            //       ),
            //     ),
            // ),
            Container(
              child: Image.network(
                "https://imgs.search.brave.com/dsjiGE-2p7a0KLIBC1nYQPcod9saHfidSLkCJ12pz-0/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9zdDMu/ZGVwb3NpdHBob3Rv/cy5jb20vMTMzNDk0/OTQvMTU5MzMvaS80/NTAvZGVwb3NpdHBo/b3Rvc18xNTkzMzQ2/MjQtc3RvY2stcGhv/dG8tYmVhdXRpZnVs/LXBpbmstZmxvd2Vy/cy5qcGc",
              ),
            ),
            Positioned(
              top: 1,
              right: 1,
              child: Container(
                child: IconButton(
                    onPressed: (){},
                    icon: Icon(
                        Icons.edit,
                      color: Colors.lightBlue,
                    ),
                ),
              ),
            ),
            Positioned(
              bottom: 1,
              left: 1,
              child: Container(
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.thumb_up_rounded,
                    color: Colors.lightGreenAccent,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 1,
              left: 50,
              child: Container(
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.message,
                    color: Colors.yellowAccent,
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
