import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/Theme/all_text_style.dart';

class WorkListDetails extends StatefulWidget {
  var address;
  var fNid;
  var mNid;
  var item;
  var money;
  var name;
  var nid;
  var phone;
  var time;
  WorkListDetails({
    Key? key,
    required this.name,
    required this.address,
    required this.fNid,
    required this.item,
    required this.mNid,
    required this.money,
    required this.nid,
    required this.phone,
    required this.time,
  }) : super(key: key);

  @override
  State<WorkListDetails> createState() => _WorkListDetailsState();
}

class _WorkListDetailsState extends State<WorkListDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: const Text(
            "কাজের তথ্য",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(15.w),
          child: Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(30.r)),
            // height: 500.h,
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h),
                    Center(
                      child: CircleAvatar(
                          backgroundColor: Colors.grey.shade300,
                          radius: 60.r,
                          backgroundImage:
                              const AssetImage("assets/images/profile.png")),
                    ),
                    SizedBox(height: 30.h),
                    const Divider(),
                    Text(
                      "নাম : ${widget.name}",
                      style: AllTextStyle().employeeName,
                    ),
                    const Divider(),
                    SizedBox(
                      height: 03.h,
                    ),
                    Text("ঠিকান : ${widget.address}"),
                    SizedBox(
                      height: 03.h,
                    ),
                    const Divider(),
                    SizedBox(
                      height: 03.h,
                    ),
                    Text("নাম্বার : ${widget.phone}"),
                    SizedBox(
                      height: 03.h,
                    ),
                    const Divider(),
                    SizedBox(
                      height: 03.h,
                    ),
                    Text("পিস : ${widget.item}"),
                    SizedBox(
                      height: 03.h,
                    ),
                    const Divider(),
                    SizedBox(
                      height: 03.h,
                    ),
                    Text("সময় : ${widget.time}"),
                    const Divider(),
                    SizedBox(
                      height: 03.h,
                    ),
                    Text("টাকা : ${widget.money}"),
                    const Divider(),
                    SizedBox(
                      height: 03.h,
                    ),
                    Text("আনাইডি নাম্বার : ${widget.nid}"),
                    SizedBox(
                      height: 03.h,
                    ),
                    const Divider(),
                    SizedBox(
                      height: 03.h,
                    ),
                    Text("পিতার আনাইডি নাম্বার : ${widget.fNid}"),
                    SizedBox(
                      height: 03.h,
                    ),
                    const Divider(),
                    SizedBox(
                      height: 03.h,
                    ),
                    Text("মাতার আনাইডি নাম্বার : ${widget.mNid}"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
