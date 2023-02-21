import 'dart:ui';

import 'package:fin_tech_app/app/recent_transaction.dart';
import 'package:flutter/material.dart';

import '../constants_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantsColors.appBackgroundColor,
      bottomNavigationBar: _buildBottomNavigationBar(context),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: Padding(
          padding: const EdgeInsets.all(24),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    _buildProfile(context),
                    _buildDetails(context),
                    _buildButtons(context),
                  ],
                ),
              ),
            ],
          )),
    );
  }

  Widget _buildProfile(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(36),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 18,
          right: 18,
          top: 18,
          bottom: 50,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 32),
              child: CircleAvatar(
                radius: 40,
                child: CircleAvatar(
                backgroundColor: ConstantsColors.buttonColor,
                  radius: 38,
                  child: Image.asset(
                    'assets/avatar3.png',
                  ),
                ),
              ),
            ),
            Text(
              'Mohammed Aqeeb',
              style: TextStyle(
                color: ConstantsColors.buttonColor,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 24),
            _buildUserDetails(context)
          ],
        ),
      ),
    );
  }

  Widget _buildUserDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildMoneyTextField(context: context, value: '8900'),
              _buildDescriptionText(context: context, text: 'Income'),
            ],
          ),
          const SizedBox(
            height: 55,
            child: VerticalDivider(color: Colors.grey),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildMoneyTextField(context: context, value: '5500'),
              _buildDescriptionText(context: context, text: 'Expenses'),
            ],
          ),
          const SizedBox(
            height: 55,
            child: VerticalDivider(color: Colors.grey),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildMoneyTextField(context: context, value: '150'),
              _buildDescriptionText(context: context, text: 'Loan'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMoneyTextField({
    required BuildContext context,
    required String value,
  }) {
    return Text(
      '\$$value',
      style: TextStyle(
          color: ConstantsColors.buttonColor,
          fontSize: 18,
          fontWeight: FontWeight.w500),
    );
  }

  Widget _buildDescriptionText({
    required BuildContext context,
    required String text,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget _buildDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 32, bottom: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'Overview',
                style: TextStyle(
                  color: ConstantsColors.buttonColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 12),
              const Icon(
                Icons.notifications_on_rounded,
                color: Colors.black,
              )
            ],
          ),
          Text(
            'Feb 23, 2022',
            style: TextStyle(
              color: ConstantsColors.buttonColor,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtons(BuildContext context) {
    return Column(
      children: [
        _buildButtonDesign(
          context: context,
          title: 'Sent',
          description: 'Sending payments to clients',
          iconData: Icons.arrow_upward_outlined,
          value: '150',
        ),
        _buildButtonDesign(
          context: context,
          title: 'Receive',
          description: 'Receiving salary from company',
          iconData: Icons.arrow_downward_outlined,
          value: '600',
        ),
        _buildButtonDesign(
          context: context,
          title: 'Loan',
          description: 'Loan from education',
          iconData: Icons.monetization_on_outlined,
          value: '200',
        ),
      ],
    );
  }

  Widget _buildButtonDesign({
    required BuildContext context,
    required String title,
    required String description,
    required IconData iconData,
    required String value,
  }) {
    return Card(
      color: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(36),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 12,
          right: 12,
          top: 28,
          bottom: 28,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  color: Color.fromRGBO(171, 219, 227, 100),
                ),
                child: Icon(
                  iconData,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    description,
                    style: TextStyle(
                      color: ConstantsColors.lightGrey,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            _buildMoneyTextField(context: context, value: value)
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 28,
      onTap: (value) {},
      backgroundColor: ConstantsColors.appBackgroundColor,
      elevation: 5,
      type: BottomNavigationBarType.fixed,
      // unselectedItemColor: Colors.black,
      fixedColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          label: '',
          icon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home_filled,
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.wallet_outlined),
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box,
              size: 42,
              color: ConstantsColors.buttonColor,
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: 'Transactions',
          icon: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RecentTranscationScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.monetization_on_outlined,
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_pin,
            ),
          ),
        ),
      ],
    );
  }
}
