import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menu_perfil/menu_perfil.dart';
import 'package:menu_perfil/select_screen.dart';

class profile_info extends StatefulWidget {
  const profile_info({
    Key? key,
    required this.height,
    required this.width,
    required this.light,
  }) : super(key: key);

  final double height;
  final double width;
  final bool light;

  @override
  State<profile_info> createState() => _profile_infoState();
}

class _profile_infoState extends State<profile_info> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    bool light = false;
    return ListView(
      children: [
        Container(
          height: widget.height * .35,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.5, 0],
                colors: [Color(0xffaea5d1), Color(0xff8075aa)]),
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: MaterialButton(
                  onPressed: (() {
                    print("object");
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) =>
                    //         const Select(page: "personal_info")));
                    getPage("personal_info", light, height, width);
                  }),
                  child: const Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 35,
                    shadows: [
                      Shadow(
                          color: Colors.black38,
                          blurRadius: 15,
                          offset: Offset(0, 6)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: widget.height * 0.035,
              ),
              Container(
                height: widget.height * 0.15,
                width: widget.width * 0.3,
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xffaea5d1), width: 7),
                    color: Colors.white,
                    shape: BoxShape.circle),
                child: const Icon(
                  Icons.person,
                  color: Color(0xffaea5d1),
                  size: 70,
                ),
              ),
              SizedBox(
                height: widget.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Lorem ipsum",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.edit,
                    color: Colors.white,
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: MaterialButton(
            shape: const Border(
                bottom: BorderSide(width: 1, color: Colors.black26)),
            height: widget.height * 0.09,
            minWidth: double.infinity,
            onPressed: () {
              print("object");
              setState(() {
                getPage("personal_info", light, height, width);
              });
            },
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Información personal",
                style: TextStyle(
                    color: Color(0xff717171),
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Container(
            decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(width: 1, color: Colors.black26)),
            ),
            height: widget.height * 0.09,
            width: widget.width * .8,
            child: Row(
              children: <Widget>[
                Container(
                  width: widget.width * 0.03,
                ),
                const Text(
                  "Modo oscuro",
                  style: TextStyle(
                      color: Color(0xff717171),
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                Container(
                  width: widget.width * 0.25,
                ),
                SizedBox(
                    width: 80,
                    child: FittedBox(
                      child: Switch(
                        value: widget.light,
                        onChanged: (value) {
                          setState(() {});
                        },
                        activeColor: const Color(0xfffaca3c),
                        inactiveThumbColor: const Color(0xfffaca3c),
                      ),
                    )),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: MaterialButton(
            shape: const Border(
                bottom: BorderSide(width: 1, color: Colors.black26)),
            height: widget.height * 0.09,
            minWidth: double.infinity,
            onPressed: () {},
            child: Row(
              children: <Widget>[
                const Text(
                  "Inventario",
                  style: TextStyle(
                      color: Color(0xff717171),
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: widget.width * 0.22,
                ),
                const Text(
                  "(Próximamente)",
                  style: TextStyle(
                      color: Color(0xff999999),
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: widget.height * 0.05,
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: widget.height * .18,
            width: widget.width * 0.35,
            decoration: const BoxDecoration(
                color: Color(0xffeaeae9),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(20, 70, 20, 0),
              child: Text(
                "Dibujo Mascota",
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
            ),
          ),
        )
      ],
    );
  }
}
