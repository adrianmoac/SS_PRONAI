import 'package:flutter/material.dart';

class Bienvenida extends StatefulWidget {
  const Bienvenida({super.key});

  @override
  State<Bienvenida> createState() => _BienvenidaState();
}

class _BienvenidaState extends State<Bienvenida> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/Fondo.png"), fit: BoxFit.cover),
        ),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        // ignore: prefer_const_literals_to_create_immutables
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "¡Bienvenido!",
            style: TextStyle(
              color: Color(0xff3f3e41),
              fontSize: 50,
              fontWeight: FontWeight.w900,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(0, 8),
                  blurRadius: 10.0,
                  color: Color.fromARGB(70, 105, 105, 105),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          Image.asset(
            "assets/logo.png",
            height: 235,
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(70, 105, 105, 105),
                  blurRadius: 8,
                  offset: Offset(0, 10), // changes position of shadow
                ),
              ],
            ),
            child: _button(),
          )
        ]),
      ),
    );
  }

  Widget _button() {
    return SizedBox(
      width: 200,
      height: 60,
      child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
          onPressed: () {},
          color: Colors.white,
          child: Row(
            children: const [
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.arrow_forward,
                color: Color(0xff797c93),
              ),
              SizedBox(width: 20),
              Text(
                "Siguiente",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff797c93)),
              ),
            ],
          )),
    );
  }
}
