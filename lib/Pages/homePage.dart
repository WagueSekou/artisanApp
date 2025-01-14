import 'package:flutter/material.dart';
import 'package:my_app/Pages/artisan1.dart';
// import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
//editing artisan ontile slide

//deleting artisan ontile slide


  void initState() {
    //read existing artisan on app startup page
    // Provider.of<ArtisanDB>(context, listen: false).readArtisans();
    super.initState();
  }

  final TextEditingController _searchController = TextEditingController();
  final TextEditingController textController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();

  // @override
  // void dispose() {
  //   // Dispose the controller when the widget is disposed
  //   _searchController.dispose();
  //   super.dispose();
  // }

  // creating a new atisan
  void createArtisan() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: TextField(
                controller: textController,
                decoration: InputDecoration(
                  hintText: "create new artisan",
                ),
              ),
              actions: [
                MaterialButton(
                  onPressed: () {
                    //getting the new artisan name
                    String ArtisanName = textController.text;

                    //saving to db
                    // context.read<ArtisanDB>().addArtisan(newArtisanName);

                    //pop the box
                    Navigator.pop(context);

                    //clearing controller
                    textController.clear();
                  },
                  child: const Text('save'),
                ),
                //cancel btn
                MaterialButton(
                  onPressed: () {
                    //pop box
                    Navigator.pop(context);

                    //clear controller
                    textController.clear();
                  },
                  child: const Text('cancel'),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.lightBlue[300],
      // backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi User!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "23 jan 2025",
                        style: TextStyle(color: Colors.blue[100]),
                      ),
                    ],
                  ),

                  //notification bell icon
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  )
                ],
              ),

              SizedBox(
                height: 15,
              ),

              //search bar
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _searchController,
                        focusNode: _searchFocusNode,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'Search ...',
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Text(
                "Hi User!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),

              SizedBox(
                height: 20,
              ),

              //Box containing the list of artisan
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  padding: EdgeInsets.all(10),
                  // height: 200,
                  // width: 150,
                  child: ListView(
                    children: [
                      Column(
                        children: <Widget>[
                          ArtisanHomePage(
                              name: "Capenter",
                              description:
                                  "Best capenter you will ever work with",
                              price: 1000,
                              image: "cap.jpeg",
                              editArtisan: (context) {
                                  // Default empty action
                                  print("Edit Capenter");
                                },
                                deletArtisan: (context) {
                                  // Default empty action
                                  print("Delete Capenter");
                                },
                              ),
                          ArtisanHomePage(
                              name: "Pixel",
                              description:
                                  "Pixel is the most featureful phone ever",
                              price: 800,
                              image: "download.jpeg",
                              editArtisan: (context) {
                                      // Default empty action
                                    },
                                    deletArtisan: (context) {
                                      // Default empty action
                                    },
                              ),
                          ArtisanHomePage(
                              name: "Laptop",
                              description:
                                  "Laptop is most productive development tool",
                              price: 2000,
                              image: "download.jpeg",
                              editArtisan: (context) {
                                        // Default empty action
                                      },
                                      deletArtisan: (context) {
                                        // Default empty action
                                      },
                              ),
                          ArtisanHomePage(
                              name: "Tablet",
                              description:
                                  "Tablet is the most useful device ever for meeting",
                              price: 1500,
                              image: "download.jpeg",
                              editArtisan: (context) {
                                        // Default empty action
                                      },
                                      deletArtisan: (context) {
                                        // Default empty action
                                      },
                              ),
                          ArtisanHomePage(
                              name: "Pendrive",
                              description: "Pendrive is useful storage medium",
                              price: 100,
                              image: "download.jpeg",
                              editArtisan: (context) {
                                        // Default empty action
                                      },
                                      deletArtisan: (context) {
                                        // Default empty action
                                      },
                              ),
                          ArtisanHomePage(
                              name: "Floppy Drive",
                              description:
                                  "Floppy drive is useful rescue storage medium",
                              price: 20,
                              image: "download.jpeg",
                              editArtisan: (context) {
                                       // Default empty action
                                     },
                                     deletArtisan: (context) {
                                       // Default empty action
                                     },
                              )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      //floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: createArtisan,
        elevation: 0,
        backgroundColor: Colors.blue[800],
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }

   //returning a list of artisan ui
      // return Listview.builder(
      //   itemCount: currentArtisan.length,
      //   itemBuilder: (context, index){
      //     //get each individual artisan
      //     final Artisan = currentArtisan[index];
      //     //return artisan tile Ui
      //     return ListTile(
      //       title: Text(habit.name),
      //     );

      //   }
      // );
}
