import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'globals.dart';
import 'list.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return
      CupertinoTabScaffold(
          resizeToAvoidBottomInset: false,
          tabBar: CupertinoTabBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home), label: "Products"),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.cart), label: "Cart"),
            ],
          ),
          tabBuilder: (BuildContext context, i) {
            if (i == 0) {
              return CupertinoPageScaffold(
                navigationBar: const CupertinoNavigationBar(
                  middle: Text("Cupertino Store",style: TextStyle(fontSize: 25),),
                  backgroundColor: CupertinoColors.lightBackgroundGray,

                ),
                resizeToAvoidBottomInset: false,
                child: Column(
                  children: [
                    SizedBox(
                      height: 750,
                      child: ListView.builder(
                        itemCount: productList.length,
                        itemBuilder: (context, i) {
                          return Column(
                            children: [
                              list(
                                  title: Text(productList[i].name,style: TextStyle(color: Colors.black,fontSize: 20),),
                                  leading: Container(
                                    height: 100,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: CupertinoColors.opaqueSeparator,
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                productList[i].image)),
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                  trailing: Material(
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          cart.add(Details(
                                              name: productList[i].name,
                                              price: productList[i].price,
                                              image: productList[i].image));
                                        });
                                      },
                                      child: const Icon(
                                        CupertinoIcons.add_circled,
                                        color: CupertinoColors.systemBlue,
                                      ),
                                    ),
                                  ),
                                  subtitle:
                                  Text("\$ ${productList[i].price}",style: TextStyle(color: CupertinoColors.inactiveGray,fontSize: 15),)),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 80,
                                  ),
                                  Container(
                                    height: 1,
                                    width: 300,
                                    decoration: BoxDecoration(
                                        color: CupertinoColors.opaqueSeparator,
                                        borderRadius: BorderRadius.circular(2)),
                                  ),
                                ],
                              )
                            ],
                          );
                        },
                      ),
                    )
                  ],
                ),
              );
            } else if (i == 1) {
              return CupertinoPageScaffold(
                  navigationBar: const CupertinoNavigationBar(
                    middle: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: CupertinoSearchTextField(),
                    ),
                  ),
                  child: SizedBox(
                    height: 725,
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                           list(
                                title: Text(productList[index].name),
                                leading: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: CupertinoColors.opaqueSeparator,
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                              productList[index].image)),
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                trailing: InkWell(
                                  onTap: () {
                                    setState(() {
                                      cart.add(Details(
                                          name: productList[index].name,
                                          price: productList[index].price,
                                          image: productList[index].image));
                                    });
                                  },
                                  child: const Icon(
                                    CupertinoIcons.add_circled,
                                    color: CupertinoColors.systemBlue,
                                  ),
                                ),
                                subtitle: Text("\$ ${productList[index].price}")),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 80,
                                ),
                                Container(
                                  height: 1,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      color: CupertinoColors.opaqueSeparator,
                                      borderRadius: BorderRadius.circular(2)),
                                ),
                              ],
                            )
                          ],
                        );
                      },
                    ),
                  ));
            }
            return CupertinoPageScaffold(
              navigationBar: const CupertinoNavigationBar(
                middle: Text("Cart"),
                backgroundColor: CupertinoColors.extraLightBackgroundGray,
              ),
              resizeToAvoidBottomInset: false,
              child: Column(
                children: [
                  SizedBox(
                    height: 725,
                    child: ListView.builder(
                      itemCount: cart.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                           list(
                                title: Text(cart[index].name),
                                leading: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: CupertinoColors.opaqueSeparator,
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image:
                                          AssetImage(cart[index].image)),
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                trailing: const Icon(
                                  Icons.done_all,
                                  color: Colors.green,
                                ),
                                subtitle: Text("\$ ${cart[index].price}")),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 80,
                                ),
                                Container(
                                  height: 1,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      color: CupertinoColors.opaqueSeparator,
                                      borderRadius: BorderRadius.circular(2)),
                                ),
                              ],
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          });
  }
}
