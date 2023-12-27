import 'package:get/get.dart';
import 'package:kris_portfolio/global/constraints/app_assets.dart';
import '../view/my_projects_view.dart';

class MyProjectsController extends GetxController {
  MyProjectsView? view;

  List<String> projectImages = [
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work1,
  ];

  RxInt hoveredIndex = 99.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
