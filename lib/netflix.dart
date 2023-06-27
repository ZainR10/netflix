import 'package:flutter/material.dart';

class Moviedetails extends StatefulWidget {
  const Moviedetails({super.key});

  @override
  State<Moviedetails> createState() => _MoviedetailsState();
}

class _MoviedetailsState extends State<Moviedetails> {
  final List<String> imagePaths = [
    'assets/extraction.jpg',
    'assets/movie33.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(

        onPressed: () {},

        backgroundColor: Color.fromARGB(255, 212, 11, 11),
        child: Icon(Icons.play_arrow),
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: BackButtonIcon(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 32, 32, 32),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Color.fromARGB(255, 255, 255, 255),),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.slow_motion_video,color: Color.fromARGB(255, 255, 255, 255),),
            label: 'Coming Soon',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download_outlined,color: Color.fromARGB(255, 255, 255, 255),),
            label: 'Download',

          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.download),
          //   label: 'Download',
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.draw),
          //   label: 'Movies',
          // ),
        ],
      ),
      body: SingleChildScrollView(

        child: Column(

          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Image.asset(
                'assets/movie33.jpg',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Stranger Things',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Suspenseful',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    )),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: CircleAvatar(
                    radius: 3,
                    backgroundColor: Colors.grey,
                  ),
                ),
                Text('Exciting',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    )),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: CircleAvatar(
                    radius: 3,
                    backgroundColor: Colors.grey,
                  ),
                ),
                Text('Thriller',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    )),
                Padding(
                  padding: EdgeInsets.all(4),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.transparent,
                      border: Border.all(color: Colors.white)),
                  height: 15,
                  width: 26,
                  child: Text('18+',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      )),
                ),
                Text('4 Parts',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    )),
                Padding(
                  padding: EdgeInsets.all(4),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Padding(
                    padding: EdgeInsets.all(4),
                    child: Text(
                      '8.3',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
//         Container(
//   child: Align(//to algin this star on the left side without makeing a row
//     alignment: Alignment.centerLeft,
//     child: Icon(Icons.star, color: Colors.yellow),
//   ),
// ),
            Container(
              child: Text(
                'Stranger Things is set in the fictional rural town of Hawkins,'
                    ' Indiana, in the 1980s. The nearby Hawkins National Laboratory ostensibly performs '
                    'scientific research for the United States Department of Energy but secretly experiments with the paranormal and supernatural,'
                    ' sometimes with human test subjects.',
                style: TextStyle(
                    color: Color.fromARGB(255, 168, 168, 168), fontSize: 10),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Recommended',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imagePaths.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(11),
                    child: Row( mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.transparent)),

                          height: 200,
                          width: 105,
                          // color: index % 2 == 0 ? Colors.red : Colors.green,
                          child: Image.asset(
                            // "assets/movie22.jpg",
                            imagePaths[index],
                            fit: BoxFit.contain,

                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imagePaths.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(11),
                    child: Row( mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.transparent)),

                          height: 200,
                          width: 105,
                          // color: index % 2 == 0 ? Colors.red : Colors.green,
                          child: Image.asset(
                            // "assets/movie22.jpg",
                            imagePaths[index],
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
