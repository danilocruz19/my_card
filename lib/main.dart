import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';  // Importando o pacote Google Fonts

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Colors.black38,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center, // Para centralizar os widgets
            children: [
              // Container com imagem, nome e ocupação
              Container(
                width: 260,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.white30, width: 2))),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20), // Padding inferior apenas
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2023/09/26/16/43/programmer-8277836_1280.jpg',
                        ),
                      ),
                      const SizedBox(height: 15),
                      RichText(
                        textAlign: TextAlign.center, // Centraliza o texto
                        text: TextSpan(
                          text: 'Danilo',
                          style: GoogleFonts.allura(
                            color: Colors.white,
                            fontSize: 55,
                            fontWeight: FontWeight.w500,
                          ),
                          children: const <TextSpan>[
                            TextSpan(
                              text: " Cruz",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 55,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      RichText(
                        textAlign: TextAlign.center, // Centraliza o texto
                        text: TextSpan(
                          text: 'DESENVOLVEDOR',
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            color: Colors.white, // Certifique-se de que a cor está consistente
                          ),
                          children: const <TextSpan>[
                            TextSpan(
                              text: "  FLUTTER",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20), // Espaço entre as seções

              // Cartão com número de telefone
              Card(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 40.0,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0), // Para garantir espaço interno
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.phone,
                        color: Colors.blueAccent,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "+55 (47) 99654-1219",
                        style: GoogleFonts.montserrat(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Container com email
              Card(
                margin: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 10.0
                ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.email,
                          color: Colors.blueAccent,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "danilocruzss@icloud.com",
                          style: GoogleFonts.montserrat(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
