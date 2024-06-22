import 'package:iem_app/pages/bar_home/model/assignment_model.dart';
import 'package:iem_app/pages/bar_home/model/fulfill_post_response_model.dart';
import 'package:iem_app/pages/bar_home/model/shift_model.dart';
import 'package:iem_app/pages/bar_home/model/get_categories_model.dart';
import 'package:iem_app/pages/bottom_bar/controller/provider/bottom_bar_provider.dart';
import 'package:flutter/material.dart';
// import 'package:location/location.dart';

class HomeProvider extends ChangeNotifier {
  factory HomeProvider() {
    _this ??= HomeProvider._();
    return _this!;
  }
  static HomeProvider? _this;
  HomeProvider._();
  final TextEditingController totalActualLoadController = TextEditingController(),
      biomassController = TextEditingController(),
      fossilOilController = TextEditingController(),
      solarPowerController = TextEditingController(),
      temperatureController = TextEditingController(),
      brownCoalLigniteController = TextEditingController(),
      fossilGasController = TextEditingController(),
      hardCoalController = TextEditingController(),
      hydroRunOfRiverPoundageController = TextEditingController(),
      hydroWaterReservoirController = TextEditingController(),
      nuclearPowerController = TextEditingController(),
      wasteController = TextEditingController(),
      windOnshoreController = TextEditingController(),
      otherRenewableController = TextEditingController(),
      otherController = TextEditingController(),
      pressureController = TextEditingController(),
      humidityController = TextEditingController(),
      windSpeedController = TextEditingController(),
      rain_1hController = TextEditingController(),
      hourController = TextEditingController(),
      dayOfWeekController = TextEditingController(),
      monthController = TextEditingController(),
      dayController = TextEditingController();
  // int currentWidgetIndex = 0;
  int compareCounter=0;

  // Position? position;

  bool _loadResult = false;
  bool get loadResult => _loadResult;
  setLoadResult(bool loadResult) {
    _loadResult = loadResult;
    notifyListeners();
  }
  bool _loadPagination = false;
  bool get loadPagination => _loadPagination;
  setLoadPagination(bool loadPagination) {
    _loadPagination = loadPagination;
    notifyListeners();
  }
  BottomBarProvider bottomBarProvider = BottomBarProvider();

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  ShiftModel? shiftModel;
  AssignmentResponseModel? assignmentResponseModel;
  FulfillmentPostResponseModel? _fulfillmentPostResponseModel;
  FulfillmentPostResponseModel? get fulfillmentPostResponseModel => _fulfillmentPostResponseModel;

  setFulfillmentPostResponse(FulfillmentPostResponseModel? fulfillmentPostResponseModel) {
    _fulfillmentPostResponseModel = fulfillmentPostResponseModel;
    notifyListeners();
  }
  AssignmentDetail? _selectedBusinessActivity;
  AssignmentDetail? get selectedBusinessActivity => _selectedBusinessActivity;
  String? _activityActionType;
  String? get activityActionType => _activityActionType;
  void setSelectedBusinessActivity (AssignmentDetail selectedBusinessActivity){
    _selectedBusinessActivity = selectedBusinessActivity;
    notifyListeners();
  }
  void setSelectedActivityActionType(String activityActionType){
    _activityActionType = activityActionType;
    notifyListeners();
  }
  String checkEmployeeStatus({required ShiftDetails? shiftModel}) {
    if (shiftModel!.isCheckedIn == true && shiftModel.isCheckedOut == false) {
      // updateButtonText(buttonText: 'Check_out');

      return 'Check_out ';
    } else if (shiftModel.isCheckedIn == true &&
        shiftModel.isCheckedIn == true) {
      // updateButtonText(buttonText: 'Check_in ');
      return 'Done';
    } else if (shiftModel.isCheckedIn == false &&
        shiftModel.isCheckedOut == false) {
      // updateButtonText(buttonText: 'check_in');
      return 'check_in';
    } else if (shiftModel.isCheckedIn == false &&
        shiftModel.isCheckedOut == true) {
      // updateButtonText(buttonText: 'checked_in');
      return 'checked_in';
    } else {
      return '';
    }
  }
  // var location = Location();
  // LocationData? liveLocation;
  bool showAnimation = false;
  int animationDuration = 2;

  setCurrentIndex({required int newIndex}) {
    // currentWidgetIndex = newIndex;
    debugPrint(newIndex.toString());
    notifyListeners();
  }

  resetData() {
    // currentWidgetIndex = 0;
    listen();
  }

  listen() {
    notifyListeners();
  }

}
