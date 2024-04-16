import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constant/size_config.dart';
import '../../../data/remote/api_endpoint.dart';
import '../../shared/widget/logoBottom.dart';
import '../controllers/image_page_controller.dart';

class ImagePageView extends GetView<ImagePageController> {
  const ImagePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Image View',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(
            top: getProportionateScreenHeight(30),
            bottom: getProportionateScreenHeight(20),
            left: getProportionateScreenWidth(15),
            right: getProportionateScreenWidth(15)),
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenHeight(10),
                      vertical: getProportionateScreenWidth(10),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1.0,
                        color: Colors.grey,
                        strokeAlign: BorderSide.strokeAlignCenter,
                      ),
                    ),
                    child: Text(
                      'Updated ${controller.date.value}',
                      style: const TextStyle(),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Center(
                  child: Image.network(
                    "${ApiEndpoint.baseUrl}/img/${controller.date.value}.jpg",
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(30)),
              const Spacer(),
              const LogoBottom(),
            ],
          ),
        ),
      ),
    );
  }
}
