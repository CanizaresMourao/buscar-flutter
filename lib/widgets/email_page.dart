import 'package:buscar/widgets/buscar_title.dart';
import 'package:flutter/material.dart';

class EmailPage extends StatelessWidget {
  const EmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              GoHome(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text('Email Verification'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            height: 300,
            width: 250,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BuscarTitle(),
                  const Icon(
                    Icons.mark_email_read_outlined,
                    size: 32,
                  ),
                  const Column(
                    children: [
                      Text("Please, kindly verify your email.",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16)),
                      Text("We’ve sent in your inbox a verification link",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SizedBox(
                      width: 110,
                      height: 45,
                      child: OutlinedButton(
                          onPressed: () {
                            GoHome(context);
                          },
                          child: Text(
                            'Go Back',
                            style: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.onBackground),
                          )),
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }

  void GoHome(BuildContext context) =>
      Navigator.of(context).popUntil((route) => route.isFirst);
}
