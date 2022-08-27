import 'package:flutter/material.dart';
import 'package:flutter_task/controller/api_controller.dart';
import 'package:flutter_task/view/widgets/drink_card.dart';
import 'package:flutter_task/view/drink_details_screen.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ApiController _apiController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _apiController = Get.put(ApiController());
  }

  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text('Drinks List'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              onChanged: (value) {
                _apiController.searchDrinks(value);
              },
              controller: _searchController,
              autofocus: false,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade300,
                hintText: 'Search ...',
                contentPadding:
                    const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(25.7),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25.7),
                ),
              ),
            ),
          ),
          GetBuilder<ApiController>(
            builder: (_apiGetController) {
              if (_apiGetController.drinksListSorted != null) {
                final _drinksList = _apiGetController.drinksListSorted;
                if (_drinksList!.isNotEmpty) {
                  return Flexible(
                    child: ListView.builder(
                      itemCount: _apiGetController.drinksListSorted!.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DrinkDetailsScreen(
                                        drinkModel: _drinksList[index]),
                                  ));
                            },
                            child: DrinkCard(drinkModel: _drinksList[index]));
                      },
                    ),
                  );
                } else {
                  return SizedBox(
                    height: 40.h,
                    child: const Center(
                      child: Text(
                        'No Items Found',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  );
                }
              } else {
                return SizedBox(
                  height: 40.h,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
            },
          ),
        ],
      )),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _searchController.dispose();
  }
}
