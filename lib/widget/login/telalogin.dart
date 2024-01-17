import 'package:flutter/material.dart';
import 'package:licitbank/widget/telaPrincipal/telaprincipal.dart';

class Telalogin extends StatefulWidget {
  const Telalogin({super.key});

  @override
  State<Telalogin> createState() => _TelaloginState();
}

class _TelaloginState extends State<Telalogin> {
  bool modeTela(context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    if (height > width) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: FittedBox(
            child: SizedBox(
              height: 500,
              width: 1000,
              child: Card(
                color: Colors.white,
                elevation: 10,
                child: Flex(
                  direction: modeTela(context) == true
                      ? Axis.horizontal
                      : Axis.vertical,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        width: 1000,
                        decoration: BoxDecoration(
                          color: const Color(0xff51a59c),
                          borderRadius: modeTela(context) == true
                              ? const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                )
                              : const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(
                                    10,
                                  )),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Flex(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            direction: Axis.vertical,
                            children: [
                              Flexible(
                                flex: 2,
                                child: FittedBox(
                                  child: Text(
                                    "Welcome back",
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: FittedBox(
                                  child: Text(
                                    "Licitações Delbank",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: SizedBox(
                          child: Flex(
                            direction: Axis.vertical,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                flex: 2,
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                    label: Text("Email"),
                                    hintText: "Digite seu email",
                                    icon: Icon(
                                      Icons.email_outlined,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                child: TextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    label: Text("Senha"),
                                    hintText: "Digite sua senha",
                                    icon: Icon(
                                      Icons.key_rounded,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Telaprincipal()),
                                    );
                                  },
                                  child: const Text("Entrar"),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
