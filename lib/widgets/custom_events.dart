import 'package:flutter/material.dart';
import 'package:mytaskproject/widgets/custom_register_card.dart';

class Events extends StatelessWidget {
  const Events({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const RegisterCard(),
          const SizedBox(
            height: 20,
          ),
          const Text("EVENTS FOR YOU"),
          const SizedBox(
            height: 20,
          ),
          Container(
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
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "HAYABUSA\n2019HYDERABAD\nMEETUP",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Text("2000 - 8000 INR")),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
