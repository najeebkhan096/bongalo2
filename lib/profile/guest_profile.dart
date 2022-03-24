import 'package:bongalo/host/Login_Security.dart';
import 'package:bongalo/host/host_dashboard.dart';
import 'package:bongalo/module/color.dart';
import 'package:bongalo/profile/edit_personel_info.dart';
import 'package:bongalo/profile/update_password.dart';
import 'package:bongalo/profile/view_profile.dart';
import 'package:bongalo/screen/login.dart';
import 'package:bongalo/screen/welcome.dart';
import 'package:bongalo/widgets/my_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Guest_Profile extends StatefulWidget {
  static const routename="Guest_Profile";

  @override
  State<Guest_Profile> createState() => _Guest_ProfileState();
}

class _Guest_ProfileState extends State<Guest_Profile> {

  @override
  void initState() {
    // TODO: implement initState
    current_index=4;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(

        children: [
          SizedBox(
            height: height * 0.07,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  "https://tse4.mm.bing.net/th?id=OIP.XPzaXFsEl8zF0cW1SDySRAHaEo&pid=Api&P=0&w=253&h=158"),
            ),
            title: Text(
              "Lukeman Sulaiman",
              style: getLightBlackstyle(16, FontWeight.w600),
            ),
            subtitle: InkWell(
              onTap: (){
                Navigator.of(context).pushNamed(View_Profile.routename);
              },
              child: Container(
                  decoration: BoxDecoration(),
                  child: Text(
                    "View Profile",
                    style: TextStyle(
                        fontFamily: 'Inter-Regular',
                        fontSize: 13,
                        color: Color(0xff3C85FF),
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w400
                    ),
                  )),
            ),
            trailing: InkWell(
              onTap: (){
Navigator.of(context).pushNamed(Host_Dashboard.routename);
              },
              child: Container(
                height:  height*0.058,
                width: width * 0.28,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                    child: Text(
                      "Switch to host",
                      style:getwhitestyle(12.5, FontWeight.w700),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.06,
          ),
          Container(
            margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
            child: Text(
              "Account",
              style: getLightBlackstyle(13, FontWeight.w700),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          ListTile(
            onTap: (){
              Navigator.of(context).pushNamed(Edit_Personel_info.routename);
            },
            leading: SvgPicture.asset('images/Profile.svg'),
            title: Text(
              "Personel Information",
              style: getLightBlackstyle(14, FontWeight.w400),
            ),
            trailing: Icon(
                Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            width: width*1,
            height: height*0.0012,
            color: Color(0xffC4C4C4),
          ),

          ListTile(
              onTap: (){
                Navigator.of(context).pushNamed(Login_Security.routename);
              },
            leading: SvgPicture.asset('images/Profile.svg'),
            title: Text(
              "Login & security",
              style: getLightBlackstyle(14, FontWeight.w400),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            width: width*1,
            height: height*0.0012,
            color: Color(0xffC4C4C4),
          ),

SizedBox(height: height*0.025,),
          Container(
            margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
            child: Text(
              "Referrals & Credits",
              style: getLightBlackstyle(13, FontWeight.w700),
            ),
          ),
          SizedBox(height: height*0.025,),
          ListTile(
            leading: SvgPicture.asset('images/Profile.svg'),
            title: Text(
              "Send or redeem a gift card",
              style: getLightBlackstyle(14, FontWeight.w400),
            ),
            trailing: Icon(
                Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            width: width*1,
            height: height*0.0012,
            color: Color(0xffC4C4C4),
          ),

          SizedBox(
            height: height * 0.02,
          ),

          Container(
            margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
            child: Text(
              "Support",
              style:getLightBlackstyle(13, FontWeight.w700),
            ),
          ),
          SizedBox(height: height*0.025,),
          ListTile(
            leading: SvgPicture.asset('images/Profile.svg'),
            title: Text(
              "Chat 24/7 for support",
              style: getLightBlackstyle(14, FontWeight.w400)
            ),
            trailing: Icon(
                Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ),
          Divider(),

          ListTile(
            leading: SvgPicture.asset('images/Profile.svg'),
            title: Text(
              "Give us feedback",
              style:getLightBlackstyle(14, FontWeight.w400)
            ),
            trailing: Icon(
                Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            width: width*1,
            height: height*0.0012,
            color: Color(0xffC4C4C4),
          ),

          ListTile(
            onTap: (){
              Navigator.of(context).pushNamed(Welcome.routename);
            },
            leading: SvgPicture.asset('images/Profile.svg'),
            title: Text(
              "New Listing",
              style: TextStyle(
                  color: Color(0xff9099A6),
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            trailing: Icon(
                Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ),

          SizedBox(height: height*0.025,),

          Center(
            child: InkWell(
              onTap: (){
                Navigator.of(context).pushNamed(Login.routename);
              },
              child: Text(
                  "Logout",
                  style:TextStyle(
                    decoration: TextDecoration.underline,
                      fontFamily: 'Inter-Regular',
                      fontSize: 14,
                      color: Color(0xff404040),
                      fontWeight: FontWeight.w500
                  ),

              ),
            ),
          ),
        ],
      ),
 bottomNavigationBar: Bottom_Nav(),
    );
  }
}
