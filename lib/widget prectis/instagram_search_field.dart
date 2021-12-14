import 'package:flutter/material.dart';
import 'package:work/model/instagram_search_modal.dart';

class InstagramSearchField extends StatefulWidget {
  const InstagramSearchField({Key? key}) : super(key: key);

  @override
  _InstagramSearchFieldState createState() => _InstagramSearchFieldState();
}

class _InstagramSearchFieldState extends State<InstagramSearchField> {
  List<InstaSearchModal> instList = [
    InstaSearchModal(
        "tarang__",
        "WhatsApp Image 2021-09-24 at 4.05.44 AM (3).jpeg",
        false,
        "tarang sardhara"),
    InstaSearchModal(
        "utsav_",
        "WhatsApp Image 2021-09-24 at 4.05.44 AM (3).jpeg",
        false,
        "utsav savani"),
    InstaSearchModal(
        "utsaharshv_",
        "WhatsApp Image 2021-09-24 at 4.05.44 AM (3).jpeg",
        false,
        "harsh rangpariya"),
    InstaSearchModal(
        "krenil",
        "WhatsApp Image 2021-09-24 at 4.05.44 AM (3).jpeg",
        false,
        "krenil savani"),
    InstaSearchModal(
        "aniket007",
        "WhatsApp Image 2021-09-24 at 4.05.44 AM (3).jpeg",
        false,
        "aniket savani"),
    InstaSearchModal(
        "ramani--",
        "WhatsApp Image 2021-09-24 at 4.05.44 AM (3).jpeg",
        false,
        "ramani keyur savani"),
  ];
  List<InstaSearchModal> listUserFound = [];

  bool isFollowedByMe = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {

    });
  }

  onchange(String search) {
    setState(() {
      listUserFound=instList.where((InstaSearchModal) => InstaSearchModal.name.toLowerCase().contains(search)).toList();

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade900,
        title: Container(
          height: 38,
          child: TextField(
            onChanged: (value) => onchange(value),
            style: TextStyle(color: Colors.grey.shade200),
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[850],
                contentPadding: EdgeInsets.all(0),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey.shade500,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none),
                hintStyle: TextStyle(fontSize: 14, color: Colors.grey.shade500),
                hintText: "Search users"),
          ),
        ),
      ),
      body: Container(
        color: Colors.grey.shade900,
        child: listUserFound.isEmpty?Text("no found"):ListView.builder(
          itemCount: listUserFound.length,
          itemBuilder: (BuildContext context, int index) {
            InstaSearchModal instaSearchModal = listUserFound[index];
            return userComponent(
              instaSearchModal: instaSearchModal,
            );
          },
        ),
      ),

      // body: Container(
      //   color: Colors.grey.shade900,

      //   child: _foundedUsers.length > 0 ? ListView.builder(
      //       itemCount: _foundedUsers.length,
      //       itemBuilder: (context, index) {
      //         return Slidable(
      //           actionPane: SlidableDrawerActionPane(),
      //           actionExtentRatio: 0.25,
      //           child: userComponent(user: _foundedUsers[index]),
      //           actions: <Widget>[
      //             new IconSlideAction(
      //               caption: 'Archive',
      //               color: Colors.transparent,
      //               icon: Icons.archive,
      //
      //               onTap: () => print("archive"),
      //             ),
      //             new IconSlideAction(
      //               caption: 'Share',
      //               color: Colors.transparent,
      //               icon: Icons.share,
      //               onTap: () => print('Share'),
      //             ),
      //           ],
      //           secondaryActions: <Widget>[
      //             new IconSlideAction(
      //               caption: 'More',
      //               color: Colors.transparent,
      //               icon: Icons.more_horiz,
      //               onTap: () => print('More'),
      //             ),
      //             new IconSlideAction(
      //               caption: 'Delete',
      //               color: Colors.transparent,
      //               icon: Icons.delete,
      //               onTap: () => print('Delete'),
      //             ),
      //           ],
      //         );
      //       }) : Center(child: Text("No users found", style: TextStyle(color: Colors.white),)),
      // ),
    );
  }

  userComponent({required InstaSearchModal instaSearchModal}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Container(
                width: 60,
                height: 60,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(instaSearchModal.image),
                )),
            const SizedBox(width: 10),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(instaSearchModal.name,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500)),
              SizedBox(
                height: 5,
              ),
              Text(instaSearchModal.userNme,
                  style: TextStyle(color: Colors.grey[500])),
            ])
          ]),
          GestureDetector(
            onTap: () {
              setState(() {
                instaSearchModal.isfollowed !=instaSearchModal.isfollowed;
              });
            },
            child: AnimatedContainer(
                height: 35,
                width: 110,
                duration: Duration(milliseconds: 300),
                decoration: BoxDecoration(
                    color: instaSearchModal.isfollowed
                        ? Colors.blue[700]
                        : Color(0xffffff),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: instaSearchModal.isfollowed
                          ? Colors.transparent
                          : Colors.grey.shade700,
                    )),
                child: Center(
                    child: Text(
                        instaSearchModal.isfollowed ? 'Unfollow' : 'Follow',
                        style: TextStyle(
                            color: instaSearchModal.isfollowed
                                ? Colors.white
                                : Colors.white)))),
          )
        ],
      ),
    );
  }
}
