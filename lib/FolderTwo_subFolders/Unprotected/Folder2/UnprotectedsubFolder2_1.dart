// ignore_for_file: camel_case_types

import 'package:cartoon_gallery/FolderTwo_subFolders/Unprotected/Folder2/UnprotectedsubFolder2_1_1.dart';
import 'package:cartoon_gallery/FolderTwo_subFolders/Unprotected/Folder2/UnprotectedsubFolder2_1_2.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class UnprotectedSubFolder2_1 extends StatefulWidget {
  const UnprotectedSubFolder2_1({Key? key}) : super(key: key);

  @override
  State<UnprotectedSubFolder2_1> createState() =>
      _UnprotectedSubFolder2_1State();
}

class _UnprotectedSubFolder2_1State extends State<UnprotectedSubFolder2_1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: 100 * SizeConfig.blockSizeHorizontal,
          height: 100 * SizeConfig.blockSizeVertical,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/HomeScreen/main-bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.symmetric(
              horizontal: 5 * SizeConfig.blockSizeHorizontal),
          child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 5 * SizeConfig.blockSizeVertical),
                SizedBox(
                  width: 100 * SizeConfig.blockSizeHorizontal,
                  height: 15 * SizeConfig.blockSizeVertical,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          "assets/HomeScreen/back-btn-icon.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 100 * SizeConfig.blockSizeHorizontal,
                  height: 70 * SizeConfig.blockSizeVertical,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 20 * SizeConfig.blockSizeHorizontal,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const UnprotectedSubFolder2_1_1(),
                              ),
                            );
                          },
                          child: const Image(
                            image: AssetImage(
                                "assets/MainFolder2_assets/UnprotectedFolder_assets/Folder2/subfolder2_1-icon.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(width: 2.5 * SizeConfig.blockSizeHorizontal),
                      SizedBox(
                        width: 20 * SizeConfig.blockSizeHorizontal,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const UnprotectedSubFolder2_1_2(),
                              ),
                            );
                          },
                          child: const Image(
                            image: AssetImage(
                                "assets/MainFolder2_assets/UnprotectedFolder_assets/Folder2/subfolder2_1_2-icon.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}