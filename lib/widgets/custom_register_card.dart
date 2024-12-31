import 'package:flutter/material.dart';

class RegisterCard extends StatelessWidget {
  const RegisterCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.grey),
      child: Stack(
        children: [
          const Center(
              child: FlutterLogo(
            size: 200,
          )),
          const Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "8 DAYBIKE TRIP TO LEH LADAKH",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              )),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 20),
                child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Text("Register Now")),
              )),
        ],
      ),
    );
  }
}
