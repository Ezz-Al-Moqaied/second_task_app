import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(Icons.arrow_back, size: 28),
              ),
              const Spacer(),
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(Icons.filter, size: 28),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
                    decoration: BoxDecoration(
                        color: Colors.indigo.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(50)),
                    child: const Text(
                      "3",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          const Text(
            "74 results for \n'photographer'",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  color: Colors.black.withOpacity(0.03),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15 , horizontal: 10),
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  color: Colors.black.withOpacity(0.1),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 40),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                width: double.infinity,
                height: 280,
                decoration: BoxDecoration(
                  color: Colors.indigo.withOpacity(0.9),
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Photographer",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(25)),
                          child: const Icon(
                            Icons.bookmark_add_rounded,
                            size: 28,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: Text(
                        "120/h",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.indigo.withOpacity(0.9)),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Subject and studio photography \nof goods for an online store. Photo \nprocessing.",
                      style: TextStyle(
                          fontSize: 18, color: Colors.white.withOpacity(0.7)),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(25)),
                          child: const Text(
                            "Photography",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(25)),
                          child: const Text(
                            "Photoshop",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ],
          ), 
          const SizedBox(height: 8,),
          Row(
            children: [
              Column(
                children: [
                  Transform.scale(
                    scaleX: -1,
                    child: Image.asset('assets/images/image2.png'),
                  ),
                  const SizedBox(height: 8,),
                  const Text("Dislike" , style: TextStyle(
                    fontSize: 18 ,
                    color: Colors.black ,
                    fontWeight: FontWeight.bold
                  )),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Image.asset('assets/images/image2.png'),
                  const SizedBox(height: 8,),
                  const Text("Like" , style: TextStyle(
                      fontSize: 18 ,
                      color: Colors.black ,
                      fontWeight: FontWeight.bold
                  )),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
