import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menu_perfil/menu_perfil.dart';

class personal_info extends StatelessWidget {
  const personal_info({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 120.0,
          child: Stack(
            children: [
              //Aquí va el botón de retorno
              SizedBox(
                height: height * .03,
                width: width * .03,
                child: MaterialButton(
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => const Profile(page: "Profile")));
                    print("daf");
                    Profile(page: "personal_info");
                  },
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: const Icon(Icons.arrow_back, color: Color(0xff8075AA)),
                ),
              ),

              //Aquí va el banner superior
              const SizedBox(
                //width: width,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    //left top right bottom
                    padding: EdgeInsets.fromLTRB(10, 25, 20, 0),
                    child: Text(
                      "Información personal",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 22,
                          color: Color(0xff717171)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height,
          width: width,
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              //left top right bottom
              padding: const EdgeInsets.fromLTRB(25, 0, 30, 0),
              child: ListView(
                children: [
                  const SizedBox(
                    height: 45,
                    child: Align(
                      alignment: Alignment.center,
                      child: ListTile(
                        title: Text(
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xff717171),
                              fontWeight: FontWeight.w700,
                            ),
                            "NOMBRE(S)"),
                        textColor: Color(0xff717171),
                        minVerticalPadding: 10,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        //left top right bottom
                        padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                        child: TextFormField(
                          textAlign: TextAlign.left,
                          textAlignVertical: TextAlignVertical.center,
                          //Color del texto al ser introducido
                          style: const TextStyle(
                            color: Color(0xff717171),
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(5, 0, 0, 0),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'Lorem ipsum',
                            hintStyle: const TextStyle(
                              color: Color(0xff717171),
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                    child: Align(
                      alignment: Alignment.center,
                      child: ListTile(
                        title: Text(
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xff717171),
                              fontWeight: FontWeight.w700,
                            ),
                            "PRIMER APELLIDO"),
                        textColor: Color(0xff717171),
                        minVerticalPadding: 10,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        //left top right bottom
                        padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                        child: TextFormField(
                          textAlign: TextAlign.left,
                          textAlignVertical: TextAlignVertical.top,
                          //Color del texto al ser introducido
                          style: const TextStyle(
                            color: Color(0xff717171),
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),

                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(5, 0, 0, 0),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'Lorem ipsum',
                            hintStyle: const TextStyle(
                              color: Color(0xff717171),
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                    child: Align(
                      alignment: Alignment.center,
                      child: ListTile(
                        title: Text(
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xff717171),
                              fontWeight: FontWeight.w700,
                            ),
                            "SEGUNDO APELLIDO"),
                        textColor: Color(0xff717171),
                        minVerticalPadding: 10,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        //left top right bottom
                        padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                        child: TextFormField(
                          textAlign: TextAlign.left,
                          textAlignVertical: TextAlignVertical.top,
                          //Color del texto al ser introducido
                          style: const TextStyle(
                            color: Color(0xff717171),
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),

                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(5, 0, 0, 0),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'Lorem ipsum',
                            hintStyle: const TextStyle(
                              color: Color(0xff717171),
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                    child: Align(
                      alignment: Alignment.center,
                      child: ListTile(
                        title: Text(
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xff717171),
                              fontWeight: FontWeight.w700,
                            ),
                            "CORREO ELECTRÓNICO"),
                        textColor: Color(0xff717171),
                        minVerticalPadding: 10,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        //left top right bottom
                        padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                        child: TextFormField(
                          textAlign: TextAlign.left,
                          textAlignVertical: TextAlignVertical.top,
                          //Color del texto al ser introducido
                          style: const TextStyle(
                            color: Color(0xff717171),
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),

                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(5, 0, 0, 0),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'Lorem ipsum',
                            hintStyle: const TextStyle(
                              color: Color(0xff717171),
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                    child: Align(
                      alignment: Alignment.center,
                      child: ListTile(
                        title: Text(
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xff717171),
                              fontWeight: FontWeight.w700,
                            ),
                            "EDAD"),
                        textColor: Color(0xff717171),
                        minVerticalPadding: 10,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        //left top right bottom
                        padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                        child: TextFormField(
                          textAlign: TextAlign.left,
                          textAlignVertical: TextAlignVertical.top,
                          //Color del texto al ser introducido
                          style: const TextStyle(
                            color: Color(0xff717171),
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),

                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(5, 0, 0, 0),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'Lorem ipsum',
                            hintStyle: const TextStyle(
                              color: Color(0xff717171),
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
