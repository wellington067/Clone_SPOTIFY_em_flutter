import 'package:flutter/material.dart';

import '../share/components/album_item_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .5,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment
                      .topCenter, //formata o background que tem no topo
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.white.withOpacity(0.5),
                Colors.white.withOpacity(0.1),
                Colors.black.withOpacity(0)
              ])),
        ),
        SingleChildScrollView(
          //parte que formata a foto do album de musica (line 32-60)
          physics: const BouncingScrollPhysics(),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal:
                          20), //altera o padding dos bottoes que tem no topo
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, //faz com que os botoes que estao no topo ocupem o mesmo espaço entre eles
                    children: [
                      Text(
                        "recnetly played",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      const Row(
                        children: [
                          Icon(Icons.notifications),
                          Icon(Icons.history),
                          Icon(Icons.settings),
                        ],
                      )
                    ],
                  ),
                ),
                const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(16),
                    child: Row(
                      children: [
                        AlbumItemCard(
                            label: "motivational songs",
                            image: AssetImage("assets/img.jpeg")),
                        SizedBox(
                          width: 16,
                        ),
                        AlbumItemCard(
                            label: "power gaming",
                            image: AssetImage("assets/OIP.jpeg")),
                        SizedBox(
                          width: 16,
                        ),
                        AlbumItemCard(
                            label: "top 50 melhores",
                            image: AssetImage("assets/alok1.jpeg")),
                        SizedBox(
                          width: 16,
                        ),
                        AlbumItemCard(
                            label: "play list completa",
                            image: AssetImage("assets/alok2.jpeg")),
                        SizedBox(
                          width: 16,
                        ),
                        AlbumItemCard(
                            label: "eletronic",
                            image: AssetImage("assets/eletronic.jpeg")),
                        SizedBox(
                          width: 16,
                        ),
                        AlbumItemCard(
                            label: "alok",
                            image: AssetImage("assets/alok.jpeg")),
                        SizedBox(
                          width: 16,
                        ),
                      ],
                    )),
                Column(
                  children: [
                    Text(
                      "good everning",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(
                      height: 16,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
