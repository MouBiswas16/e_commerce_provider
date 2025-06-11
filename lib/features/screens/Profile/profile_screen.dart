// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:e_commerce_provider/core/export/export.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // Provider.of<ProfileProvider>(context, listen: false);  // For accesssing the data, variables from the provider without needing the UI to be changed
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/profile3.png",
            fit: BoxFit.cover,
            height: size.height,
            width: size.width,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Container(
                  height: size.height * 0.42,
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 38,
                                      backgroundImage: AssetImage(
                                          "assets/images/profile3.png"),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.lightBlue),
                                        child: Icon(
                                          Icons.check,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Consumer(
                                  builder: (BuildContext context,
                                          ProfileProvider provider,
                                          Widget? child) =>
                                      Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          provider.toggleFriend();
                                        },
                                        child: provider.friend
                                            ? Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(18),
                                                  border: Border.all(
                                                      color: Colors.black54),
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 9,
                                                    horizontal: 12),
                                                child: Text(
                                                  "Add Friend".toUpperCase(),
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              )
                                            : SizedBox(width: 8),
                                      ),
                                      SizedBox(width: 8),
                                      InkWell(
                                        onTap: () {
                                          provider.toggleFriend();
                                        },
                                        child: Container(
                                          decoration: provider.friend
                                              ? BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(18),
                                                  color: Colors.redAccent)
                                              : BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(18),
                                                  border: Border.all(
                                                      color: Colors.black54),
                                                ),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 8, horizontal: 12),
                                          child: Text(
                                            provider.friend
                                                ? "Follow"
                                                : "Unfollow",
                                            style: provider.friend
                                                ? TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                    color: Colors.white,
                                                  )
                                                : TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                    color: Colors.black,
                                                  ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Winnie Vasquez",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 28,
                              ),
                            ),
                            Text(
                              "Flutter Developer",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                  color: Colors.black45),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "A Flutter developer is a software engineer who has proficiency with the Flutter framework to develop mobile, web,",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Divider(color: Colors.black12),
                      SizedBox(
                        height: 65,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            friendAndMore("FRIENDS", "2318"),
                            friendAndMore("FOLLOWING", "364"),
                            friendAndMore("FOLLOWER", "175"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox friendAndMore(title, number) {
    return SizedBox(
      width: 110,
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.black26,
            ),
          ),
          Text(
            number,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
