import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:mypharmacy_app/constant.dart';
import 'package:mypharmacy_app/core/utils/app_router.dart';
import 'package:mypharmacy_app/features/setting/presentation/views/widgets/toggel_icon_button.dart';

import 'custom_setting_card.dart';

class SettingViewBody extends StatefulWidget {
  const SettingViewBody({super.key});

  @override
  State<SettingViewBody> createState() => _SettingViewBodyState();
}

class _SettingViewBodyState extends State<SettingViewBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: kPrimaryPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  'الاعدادات',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 27,
                ),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(
                      AppRouter.personalInformationView,
                    );
                  },
                  child: CustomSettingCard(
                    text: 'المعلومات الشخصيه',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.saveAdressView);
                  },
                  child: CustomSettingCard(
                    text: 'العنوان المحفوظ',
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'الاشعارات',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ToggelIconButton()
                    ]),
                SizedBox(
                  height: 128,
                ),
                Text(
                  'تسجيل الخروج',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Color(
                      0xff9E000B,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
