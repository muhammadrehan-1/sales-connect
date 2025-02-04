import 'package:connect_sales/colors.dart';
import 'package:connect_sales/main_screens/add_product_screen.dart';
import 'package:connect_sales/main_screens/favourites_screen.dart';
import 'package:connect_sales/main_screens/profile_screen.dart';
import 'package:connect_sales/provider/buyer_or_seller_provider.dart';
import 'package:connect_sales/provider/favourites_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'home_screen.dart';
import 'messages_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return  const NavBar();
  }
}

class NavBar extends ConsumerStatefulWidget {
  const NavBar({super.key});

  @override
  ConsumerState<NavBar> createState() => _NavBarState();
}

class _NavBarState extends ConsumerState<NavBar> {
  int index = 0;
  late List<Widget> screens;


  @override
  Widget build(BuildContext context) {
    final favouriteItems = ref.watch(favouriteItemsProvider);
    final isBuyer = ref.watch(buyerOrSellerProvider);
     screens = [
      const  HomeScreen(),
       isBuyer ? FavouritesScreen(favouriteProducts: favouriteItems) : const AddProductScreen(),
      const MessagesScreen(),
      const ProfileScreen(),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: index != 0 ? AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leadingWidth: 64,
        leading: InkWell(
          onTap: () {
           setState(() {
             index = 0;
           });
          },
          child: Container(
            margin: const EdgeInsets.only(left: 24),
            child: SvgPicture.asset(
              'assets/icons/back_button.svg',
            ),
          ),
        ),
        title: (index == 1)? Text(
          isBuyer ? 'Favourites' : 'Add Product',
          textAlign: TextAlign.center,
          style: const TextStyle().copyWith(
            color: grey,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ):(index == 2)?Text(
         'Messages',
         textAlign: TextAlign.center,
         style: const TextStyle().copyWith(
           color: grey,
           fontSize: 18,
           fontWeight: FontWeight.w600,
         ),
       ): Text(
       'Profile',
       textAlign: TextAlign.center,
    style: const TextStyle().copyWith(
    color: grey,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    ),
      ) ): null,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child:  BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: index,
          onTap: (int newIndex){
            setState(() {
              index = newIndex;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/shop_icon.svg', height: 21, width: 22,),
                activeIcon: SvgPicture.asset('assets/icons/home_active.svg',height: 30, width: 22,),
                label: ''
            ),
            BottomNavigationBarItem(
                icon: isBuyer ? SvgPicture.asset('assets/icons/heart_icon.svg', height: 21, width: 22) :  SvgPicture.asset('assets/icons/add_product_button.svg', height: 21, width: 22),
                activeIcon: isBuyer ? SvgPicture.asset('assets/icons/heart_icon_colored.svg',height: 30, width: 22): SvgPicture.asset('assets/icons/add_product_button_colored.svg',height: 30, width: 22),
                label: ''
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/chat_icon.svg', height: 21, width: 22),
                activeIcon: Column(
                  children: [
                    SvgPicture.asset('assets/icons/chat_icon_colored.svg',height: 21, width: 22),
                    const SizedBox(
                      height: 5,
                    ),
                    SvgPicture.asset('assets/icons/dot_colored.svg',height: 3, width: 3),
                  ],
                ),
                label: ''
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/user_icon.svg', height: 21, width: 22),
                activeIcon: Column(
                  children: [
                    SvgPicture.asset('assets/icons/user_icon_colored.svg',height: 21, width: 22),
                    const SizedBox(
                      height: 5,
                    ),
                    SvgPicture.asset('assets/icons/dot_colored.svg',height: 3, width: 3),
                  ],
                ),
                label: ''
            ),
          ],
          selectedItemColor: orangeIconsText,
          type: BottomNavigationBarType.fixed,
        ),
        ),

      body: screens[index],
    );
  }
}


