library home;

import 'package:cash_flow/model/cash_flow.dart';
import 'package:cash_flow/service/api/cash_flow_api.dart';
import 'package:cash_flow/widget/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

//view
part 'package:cash_flow/module/home/view/home_page.dart';

//widget
part 'package:cash_flow/module/home/widget/total_balance.dart';
part 'package:cash_flow/module/home/widget/in_out.dart';
part 'package:cash_flow/module/home/widget/recent_transaction.dart';
part 'package:cash_flow/module/home/widget/custom_list_tile.dart';

//controller
part 'package:cash_flow/module/home/controller/home_page_controller.dart';

//binding
part 'package:cash_flow/module/home/binding/home_page_binding.dart';
