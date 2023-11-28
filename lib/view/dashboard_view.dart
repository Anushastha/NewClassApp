import 'package:flutter/material.dart';
import 'package:newclassapp/app/routes/app_route.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed:(){
                      Navigator.pushNamed(context,
                          AppRoute.arithmeticRoute);
                    },
                      child: const Text('Arithmetic View'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed:(){
                      Navigator.pushNamed(context,
                          AppRoute.ranNumRoute);
                    },
                    child: const Text('Random Number Generator'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed:(){
                      Navigator.pushNamed(context,
                          AppRoute.containerRoute);
                    },
                    child: const Text('Container'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed:(){
                      Navigator.pushNamed(context,
                          AppRoute.imageRoute);
                    },
                    child: const Text('Image View'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed:(){
                      Navigator.pushNamed(context,
                          AppRoute.listRoute);
                    },
                    child: const Text('List View'),
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
