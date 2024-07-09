import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/colors.dart';
import '../../../utils/dimensions.dart';
import '../../../widgets/big_text.dart';
import '../../../widgets/button.dart';
import '../controller/medicalReportController.dart';

class MedicalReportDetails extends GetView<MedicalReportDetailsController> {
  static const route = '/medicalreport-details';
  static launch() => Get.toNamed(route);
  const  MedicalReportDetails({super.key});


  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: Dimensions.height20 * 1.2,
            ),
            Padding(
              padding: EdgeInsets.only(left: Dimensions.width20),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: AppColors.black,
                        size: Dimensions.iconSize24 * 1.3,
                      ))),
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            SizedBox(
              height: Dimensions.height10 / 2,
              child: Divider(
                thickness: 1,
                color: AppColors.black,
              ),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: Dimensions.width20),
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius20),
                        ),
                        child: Card(
                          // margin: EdgeInsets.all(Dimensions.height15),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius20)),
                          elevation: 5,
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: Dimensions.height15 / 2,
                                right: Dimensions.width15,
                                left: Dimensions.width15),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: Dimensions.height10,
                                ),
                                BigText(
                                  text: 'Medical Report',
                                  size: Dimensions.font26,
                                  fontWeight: FontWeight.w300,
                                ),
                                SizedBox(
                                  height: Dimensions.height10,
                                ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: BigText(
                                      text: 'Chief Complaint',
                                      fontWeight: FontWeight.bold,
                                    )),
                                SizedBox(
                                  height: Dimensions.height10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    BigText(
                                      text: 'Symptoms',
                                      size: Dimensions.font10 * 1.6,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    SizedBox(
                                      width: Dimensions.width40,
                                    ),
                                    Container(
                                      height: Dimensions.height40,
                                      width: Dimensions.width50 * 10,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: AppColors.grey),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                Dimensions.radius20 / 2),
                                          ),
                                          color: AppColors.white),
                                      child: TextField(
                                        // controller: controller.symptoms,
                                        decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                bottom: 15,
                                                left: Dimensions.width20,
                                                right: Dimensions.width10 / 2),
                                            border: InputBorder.none,
                                            hintText:
                                                'Chest pain, Shortness of breath, Feeling nauseous',
                                            hintStyle: TextStyle(
                                                fontSize:
                                                    Dimensions.font10 * 1.4)),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: Dimensions.height10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    BigText(
                                      text: 'Problem',
                                      size: Dimensions.font10 * 1.6,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    SizedBox(
                                      width: Dimensions.width40,
                                    ),
                                    Container(
                                      height: Dimensions.height40,
                                      width: Dimensions.width50 * 10,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: AppColors.grey),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                Dimensions.radius20 / 2),
                                          ),
                                          color: AppColors.white),
                                      child: TextField(
                                        // controller: controller.problem,
                                        decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                bottom: 15,
                                                left: Dimensions.width20,
                                                right: Dimensions.width10 / 2),
                                            border: InputBorder.none,
                                            hintText: 'Heart Attack',
                                            hintStyle: TextStyle(
                                                fontSize:
                                                    Dimensions.font10 * 1.4)),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: Dimensions.height10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    BigText(
                                      text: 'Condition',
                                      size: Dimensions.font10 * 1.6,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    SizedBox(
                                      width: Dimensions.width40,
                                    ),
                                    Container(
                                      height: Dimensions.height40,
                                      width: Dimensions.width50 * 10,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: AppColors.grey),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                Dimensions.radius20 / 2),
                                          ),
                                          color: AppColors.white),
                                      child: TextField(
                                        // controller: controller.condition,
                                        decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                bottom: 15,
                                                left: Dimensions.width20,
                                                right: Dimensions.width10 / 2),
                                            border: InputBorder.none,
                                            hintText: 'Stable',
                                            hintStyle: TextStyle(
                                                fontSize:
                                                    Dimensions.font10 * 1.4)),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: Dimensions.height10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    BigText(
                                      text: 'Diagnosis',
                                      size: Dimensions.font10 * 1.6,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    SizedBox(
                                      width: Dimensions.width40,
                                    ),
                                    Container(
                                      height: Dimensions.height40,
                                      width: Dimensions.width50 * 10,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: AppColors.grey),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                Dimensions.radius20 / 2),
                                          ),
                                          color: AppColors.white),
                                      child: TextField(
                                        // controller: controller.symptoms,
                                        decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                bottom: 15,
                                                left: Dimensions.width20,
                                                right: Dimensions.width10 / 2),
                                            border: InputBorder.none,
                                            hintText: 'Minor cardiac arrest',
                                            hintStyle: TextStyle(
                                                fontSize:
                                                    Dimensions.font10 * 1.4)),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: Dimensions.height10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    BigText(
                                      text: 'Physician Recommendation',
                                      size: Dimensions.font10 * 1.6,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    SizedBox(
                                      width: Dimensions.width40,
                                    ),
                                    Container(
                                      height: Dimensions.height40,
                                      width: Dimensions.width50 * 10,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: AppColors.grey),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                Dimensions.radius20 / 2),
                                          ),
                                          color: AppColors.white),
                                      child: TextField(
                                        // controller: controller.symptoms,
                                        decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                bottom: 15,
                                                left: Dimensions.width20,
                                                right: Dimensions.width10 / 2),
                                            border: InputBorder.none,
                                            hintText: 'Cardiologist',
                                            hintStyle: TextStyle(
                                                fontSize:
                                                    Dimensions.font10 * 1.4)),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: Dimensions.height30 / 2,
                                ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: BigText(
                                      text: 'Vital Signs',
                                      fontWeight: FontWeight.bold,
                                    )),
                                SizedBox(
                                  height: Dimensions.height10,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Padding(
                                      padding:
                                          EdgeInsets.all(Dimensions.height10),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              BigText(
                                                text:
                                                    'Pulse (beats per minute)',
                                                size: Dimensions.font10 * 1.6,
                                                fontWeight: FontWeight.w300,
                                              ),
                                              SizedBox(
                                                width: Dimensions.width10,
                                              ),
                                              Container(
                                                height: Dimensions.height40,
                                                width: Dimensions.width50 * 2,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 2,
                                                        color: AppColors.grey),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(
                                                          Dimensions.radius20 /
                                                              2),
                                                    ),
                                                    color: AppColors.white),
                                                child: TextField(
                                                  // controller: controller.symptoms,
                                                  decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                              bottom: 15,
                                                              left: Dimensions
                                                                  .width20,
                                                              right: Dimensions
                                                                      .width10 /
                                                                  2),
                                                      border: InputBorder.none,
                                                      // hintText: 'Minor cardiac arrest',
                                                      hintStyle: TextStyle(
                                                          fontSize: Dimensions
                                                                  .font10 *
                                                              1.4)),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: Dimensions.height20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              BigText(
                                                text: 'Blood pressure (mm  Hg)',
                                                size: Dimensions.font10 * 1.6,
                                                fontWeight: FontWeight.w300,
                                              ),
                                              SizedBox(
                                                width: Dimensions.width10,
                                              ),
                                              Container(
                                                height: Dimensions.height40,
                                                width: Dimensions.width50 * 2,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 2,
                                                        color: AppColors.grey),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(
                                                          Dimensions.radius20 /
                                                              2),
                                                    ),
                                                    color: AppColors.white),
                                                child: TextField(
                                                  // controller: controller.symptoms,
                                                  decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                              bottom: 15,
                                                              left: Dimensions
                                                                  .width20,
                                                              right: Dimensions
                                                                      .width10 /
                                                                  2),
                                                      border: InputBorder.none,
                                                      // hintText: 'Minor cardiac arrest',
                                                      hintStyle: TextStyle(
                                                          fontSize: Dimensions
                                                                  .font10 *
                                                              1.4)),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: Dimensions.height20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              BigText(
                                                text: 'Pulse oximetry (%)',
                                                size: Dimensions.font10 * 1.6,
                                                fontWeight: FontWeight.w300,
                                              ),
                                              SizedBox(
                                                width: Dimensions.width10,
                                              ),
                                              Container(
                                                height: Dimensions.height40,
                                                width: Dimensions.width50 * 2,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 2,
                                                        color: AppColors.grey),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(
                                                          Dimensions.radius20 /
                                                              2),
                                                    ),
                                                    color: AppColors.white),
                                                child: TextField(
                                                  // controller: controller.symptoms,
                                                  decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                              bottom: 15,
                                                              left: Dimensions
                                                                  .width20,
                                                              right: Dimensions
                                                                      .width10 /
                                                                  2),
                                                      border: InputBorder.none,
                                                      // hintText: 'Minor cardiac arrest',
                                                      hintStyle: TextStyle(
                                                          fontSize: Dimensions
                                                                  .font10 *
                                                              1.4)),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: Dimensions.height20,
                                          ),
                                        ],
                                      ),
                                    )),
                                    Expanded(
                                        child: Padding(
                                      padding:
                                          EdgeInsets.all(Dimensions.height10),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              BigText(
                                                text:
                                                    'Respirations (breaths per minute)',
                                                size: Dimensions.font10 * 1.6,
                                                fontWeight: FontWeight.w300,
                                              ),
                                              SizedBox(
                                                width: Dimensions.width10,
                                              ),
                                              Container(
                                                height: Dimensions.height40,
                                                width: Dimensions.width50 * 2,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 2,
                                                        color: AppColors.grey),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(
                                                          Dimensions.radius20 /
                                                              2),
                                                    ),
                                                    color: AppColors.white),
                                                child: TextField(
                                                  // controller: controller.symptoms,
                                                  decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                              bottom: 15,
                                                              left: Dimensions
                                                                  .width20,
                                                              right: Dimensions
                                                                      .width10 /
                                                                  2),
                                                      border: InputBorder.none,
                                                      // hintText: 'Minor cardiac arrest',
                                                      hintStyle: TextStyle(
                                                          fontSize: Dimensions
                                                                  .font10 *
                                                              1.4)),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: Dimensions.height20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              BigText(
                                                text: 'Temperature (°F)',
                                                size: Dimensions.font10 * 1.6,
                                                fontWeight: FontWeight.w300,
                                              ),
                                              SizedBox(
                                                width: Dimensions.width10,
                                              ),
                                              Container(
                                                height: Dimensions.height40,
                                                width: Dimensions.width50 * 2,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 2,
                                                        color: AppColors.grey),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(
                                                          Dimensions.radius20 /
                                                              2),
                                                    ),
                                                    color: AppColors.white),
                                                child: TextField(
                                                  // controller: controller.symptoms,
                                                  decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                              bottom: 15,
                                                              left: Dimensions
                                                                  .width20,
                                                              right: Dimensions
                                                                      .width10 /
                                                                  2),
                                                      border: InputBorder.none,
                                                      // hintText: 'Minor cardiac arrest',
                                                      hintStyle: TextStyle(
                                                          fontSize: Dimensions
                                                                  .font10 *
                                                              1.4)),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: Dimensions.height20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              BigText(
                                                text: 'Pain level',
                                                size: Dimensions.font10 * 1.6,
                                                fontWeight: FontWeight.w300,
                                              ),
                                              SizedBox(
                                                width: Dimensions.width10,
                                              ),
                                              Container(
                                                height: Dimensions.height40,
                                                width: Dimensions.width50 * 2,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 2,
                                                        color: AppColors.grey),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(
                                                          Dimensions.radius20 /
                                                              2),
                                                    ),
                                                    color: AppColors.white),
                                                child: TextField(
                                                  // controller: controller.symptoms,
                                                  decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                              bottom: 15,
                                                              left: Dimensions
                                                                  .width20,
                                                              right: Dimensions
                                                                      .width10 /
                                                                  2),
                                                      border: InputBorder.none,
                                                      // hintText: 'Minor cardiac arrest',
                                                      hintStyle: TextStyle(
                                                          fontSize: Dimensions
                                                                  .font10 *
                                                              1.4)),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: Dimensions.height10,
                                          ),
                                        ],
                                      ),
                                    )),
                                  ],
                                ),
                                SizedBox(
                                  height: Dimensions.height10 / 2,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    BigText(text: 'Glasgow Coma Scale'),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: AppColors.grey),
                                          borderRadius: BorderRadius.circular(
                                              Dimensions.radius15)),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.all(Dimensions.height10),
                                        child: Column(
                                          children: [
                                            //  SizedBox(height: Dimensions.height10/2,),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    BigText(
                                                      text: 'Eye Response',
                                                      size: Dimensions.font10 *
                                                          1.6,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                    SizedBox(
                                                      width: Dimensions.width20,
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: Dimensions.width40,
                                                ),
                                                Container(
                                                  height: Dimensions.height40,
                                                  width: Dimensions.width50 * 6,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          width: 2,
                                                          color:
                                                              AppColors.grey),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(
                                                            Dimensions
                                                                    .radius20 /
                                                                2),
                                                      ),
                                                      color: AppColors.white),
                                                  child: TextField(
                                                    // controller: controller.symptoms,
                                                    decoration: InputDecoration(
                                                        contentPadding:
                                                            EdgeInsets.only(
                                                                bottom: 15,
                                                                left: Dimensions
                                                                    .width20,
                                                                right: Dimensions
                                                                        .width10 /
                                                                    2),
                                                        border:
                                                            InputBorder.none,
                                                        hintText: '',
                                                        hintStyle: TextStyle(
                                                            fontSize: Dimensions
                                                                    .font10 *
                                                                1.4)),
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: Dimensions.height10 / 2,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                BigText(
                                                  text: 'Verbal Response',
                                                  size: Dimensions.font10 * 1.6,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                                SizedBox(
                                                  width: Dimensions.width40,
                                                ),
                                                Container(
                                                  height: Dimensions.height40,
                                                  width: Dimensions.width50 * 6,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          width: 2,
                                                          color:
                                                              AppColors.grey),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(
                                                            Dimensions
                                                                    .radius20 /
                                                                2),
                                                      ),
                                                      color: AppColors.white),
                                                  child: TextField(
                                                    // controller: controller.symptoms,
                                                    decoration: InputDecoration(
                                                        contentPadding:
                                                            EdgeInsets.only(
                                                                bottom: 15,
                                                                left: Dimensions
                                                                    .width20,
                                                                right: Dimensions
                                                                        .width10 /
                                                                    2),
                                                        border:
                                                            InputBorder.none,
                                                        hintText: '',
                                                        hintStyle: TextStyle(
                                                            fontSize: Dimensions
                                                                    .font10 *
                                                                1.4)),
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: Dimensions.height10 / 2,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                BigText(
                                                  text: 'Motor Response',
                                                  size: Dimensions.font10 * 1.6,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                                SizedBox(
                                                  width: Dimensions.width40,
                                                ),
                                                Container(
                                                  height: Dimensions.height40,
                                                  width: Dimensions.width50 * 6,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          width: 2,
                                                          color:
                                                              AppColors.grey),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(
                                                            Dimensions
                                                                    .radius20 /
                                                                2),
                                                      ),
                                                      color: AppColors.white),
                                                  child: TextField(
                                                    // controller: controller.symptoms,
                                                    decoration: InputDecoration(
                                                        contentPadding:
                                                            EdgeInsets.only(
                                                                bottom: 15,
                                                                left: Dimensions
                                                                    .width20,
                                                                right: Dimensions
                                                                        .width10 /
                                                                    2),
                                                        border:
                                                            InputBorder.none,
                                                        hintText: '',
                                                        hintStyle: TextStyle(
                                                            fontSize: Dimensions
                                                                    .font10 *
                                                                1.4)),
                                                  ),
                                                )
                                              ],
                                            ),

                                            SizedBox(
                                              height: Dimensions.height10 / 2,
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: Dimensions.height30 / 2,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Button(
                                      height: Dimensions.heigth50,
                                      width: Dimensions.width40 * 3.2,
                                      on_pressed: () {},
                                      color: AppColors.white,
                                      boxBorder: Border.all(
                                          width: 2, color: AppColors.pink),
                                      radius: Dimensions.radius20,
                                      text: 'Decline',
                                      textColor: AppColors.pink,
                                    ),
                                    Button(
                                      height: Dimensions.heigth50,
                                      width: Dimensions.width40 * 3.2,
                                      on_pressed: () {},
                                      text: 'Accept',
                                      color: AppColors.pink,
                                      radius: Dimensions.radius20,
                                      textColor: AppColors.white,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: Dimensions.height20,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: Dimensions.width20),
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: Dimensions.heigth50 * 6,
                              child: Card(
                                // margin: EdgeInsets.all(Dimensions.height15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.radius20)),
                                elevation: 5,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        top: Dimensions.height15 / 2,
                                        right: Dimensions.width15,
                                        left: Dimensions.width15),
                                    child: Center(
                                        child: BigText(
                                      text: 'MAP',
                                      letterspacing: 1.2,
                                    ))),
                              ),
                            ),
                            SizedBox(
                              height: Dimensions.heigth50,
                            ),
                            SizedBox(
                              height: Dimensions.heigth50 * 6.5,
                              child: Card(
                                // margin: EdgeInsets.all(Dimensions.height15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.radius20)),
                                elevation: 5,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: Dimensions.height15 / 2,
                                      right: Dimensions.width15,
                                      left: Dimensions.width15),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: Dimensions.height20,
                                        ),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: BigText(
                                              text: 'Details',
                                              color: AppColors.black,
                                              fontWeight: FontWeight.w500,
                                              size: Dimensions.font15 * 1.3,
                                            )),
                                        SizedBox(
                                          height: Dimensions.heigth50,
                                        ),
                                        SizedBox(
                                          height: Dimensions.height30,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            BigText(
                                              text: 'Ambulance Driver',
                                              size: Dimensions.font15,
                                              color: AppColors.pink,
                                            ),
                                            SizedBox(
                                              width: Dimensions.width40 * 3.5,
                                            ),
                                            BigText(
                                              text: 'Rahul Mahato',
                                              fontWeight: FontWeight.w500,
                                              size: Dimensions.font10 * 1.6,
                                            ),
                                            const Spacer(),
                                            Icon(
                                              Icons.phone,
                                              color: Color(0xFFBF0000),
                                              size: Dimensions.iconSize10 * 2,
                                            ),
                                            SizedBox(
                                              width: Dimensions.width30,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: Dimensions.height10,
                                        ),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: BigText(
                                              text: 'XY 23 BP 1111',
                                              fontWeight: FontWeight.w400,
                                              size: Dimensions.font15,
                                            )),
                                        SizedBox(
                                          height: Dimensions.height20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            BigText(
                                              text: 'Nurse',
                                              size: Dimensions.font15,
                                              color: AppColors.pink,
                                            ),
                                            SizedBox(
                                              width: Dimensions.width40 * 5.6,
                                            ),
                                            BigText(
                                              text: 'Shilpa',
                                              fontWeight: FontWeight.w500,
                                              size: Dimensions.font10 * 1.6,
                                            ),
                                            const Spacer(),
                                            Icon(
                                              Icons.phone,
                                              color: Color(0xFFBF0000),
                                              size: Dimensions.iconSize10 * 2,
                                            ),
                                            SizedBox(
                                              width: Dimensions.width30,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: Dimensions.height30,
                                        ),
                                        Button(
                                          on_pressed: () {},
                                          width: Dimensions.width50*6,
                                          height: Dimensions.height40 * 1.1,
                                          text: 'Chatbox',
                                          textColor: AppColors.grey,
                                          color: AppColors.white,
                                          radius: Dimensions.radius15,
                                          boxBorder: Border.all(
                                              width: 2, color: AppColors.pink),
                                        ),
                                        // SizedBox(
                                        //   height: Dimensions.height15,
                                        // )
                                      ]),
                                ),
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
          ],
        ),
      ),
    );
  }
}
