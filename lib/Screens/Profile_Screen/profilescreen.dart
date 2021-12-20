import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wecycle/Screens/Extensions/auth.dart';
import 'package:wecycle/Screens/Extensions/globals.dart';
import 'package:wecycle/Screens/Profile_Screen/settingsPages.dart';

class ProfileScreen extends StatelessWidget {
  List<String> settingsList = [
    'Personal Details',
    'Verifications',
    'Payment Info',
    'Payout Info',
    'Refer a Friend',
    'Help'
  ];
  List<IconData> iconsList = [
    Icons.person_outline_rounded,
    Icons.star_border_rounded,
    Icons.account_balance_wallet_outlined,
    Icons.account_balance_rounded,
    Icons.share,
    Icons.help
  ];
  List<Widget> settingsPagelist = <Widget>[
    PersonalDetailsPage(),
    VerificationsPage(),
    PaymentPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: SafeArea(
        child: Container(
          color: Colors.grey.withOpacity(0.1),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Material(
                  elevation: 3,
                  child: Container(
                    height: 50,
                    child: Center(
                      child: Text(
                        'Profile',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/profile_pic.jpg'),
                                fit: BoxFit.fill),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          right: 15,
                          child: Container(
                            decoration: BoxDecoration(
                              color: greenColor,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.create_rounded),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Test Name',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ),
                    Container(
                      height: 400,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                      child: ListView.builder(
                        itemCount: settingsList.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      settingsPagelist[index]),
                            );
                          },
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                top: BorderSide(width: 1, color: greyColor),
                                bottom:
                                    BorderSide(width: 0.5, color: greyColor),
                              ),
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(left: 20),
                                      child: Icon(iconsList[index],
                                          color: greenColor)),
                                  Container(
                                    margin: EdgeInsets.only(left: 20),
                                    child: Text(
                                      settingsList[index],
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black45,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        final provider = Provider.of<GoogleSignInProvider>(
                            context,
                            listen: false);
                        provider.logout();
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 30),
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            top: BorderSide(width: 1, color: greyColor),
                            bottom: BorderSide(width: 0.5, color: greyColor),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Logout',
                            style: TextStyle(
                              color: Colors.red.withOpacity(0.8),
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
