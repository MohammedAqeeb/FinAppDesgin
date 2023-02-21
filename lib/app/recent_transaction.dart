import 'package:fin_tech_app/constants_colors.dart';
import 'package:flutter/material.dart';

class RecentTranscationScreen extends StatelessWidget {
  const RecentTranscationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstantsColors.appBackgroundColor,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.grey,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_sharp,
                color: Colors.grey,
              ),
            ),
          ),
        ],
        elevation: 0,
      ),
      backgroundColor: ConstantsColors.appBackgroundColor,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildRecentTransactionText(context),
          _buildActionButtons(context),
          _buildCard(context),
          _buildCircle(context),
          const SizedBox(
            height: 10,
          ),
          _buildDetailButton(context),
        ],
      ),
    );
  }

  Widget _buildRecentTransactionText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Recent Transacctions',
          style: TextStyle(
            color: ConstantsColors.buttonColor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Sell all',
            style: TextStyle(
              color: Color(0xff8f95a2),
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return Row(
      children: [
        _buildButtons(context, 'All', ConstantsColors.buttonColor),
        const SizedBox(width: 10),
        _buildButtons(context, 'Income', ConstantsColors.lightGrey),
        const SizedBox(width: 10),
        _buildButtons(context, 'Expense', ConstantsColors.lightGrey),
      ],
    );
  }

  Widget _buildButtons(
    BuildContext context,
    String buttonText,
    Color color,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
      ),
      onPressed: () {},
      child: Text(
        buttonText,
        style: const TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Today',
              style: TextStyle(
                color: ConstantsColors.buttonColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 25),
          Card(
            elevation: 10,
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Icon(
                      Icons.payment_rounded,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Payment',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Payment from John doe',
                          style: TextStyle(
                            color: ConstantsColors.lightGrey,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '\$450',
                    style: TextStyle(
                      color: ConstantsColors.buttonColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCircle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 3,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color(0xffe9f0fb),
          border: Border.all(color: ConstantsColors.lightGrey, width: 2),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: CircleAvatar(
                radius: 30,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 29,
                  child: Image.asset(
                    'assets/avatar1.png',
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: CircleAvatar(
                radius: 30,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 29,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/avatar4.png',
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 22),
                child: CircleAvatar(
                  radius: 30,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 29,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/avatar2.png',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 22),
                child: CircleAvatar(
                  radius: 30,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 29,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/avatar2.png',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 69, 135, 242),
                radius: 60,
                child: CircleAvatar(
                  backgroundColor: const Color(0xffb4c5e5),
                  radius: 40,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 29,
                    child: Image.asset(
                      'assets/avatar3.png',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 32 * 2,
      ),
      child: SizedBox(
        width: 350,
        height: 60,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: ConstantsColors.buttonColor,
            shape: const StadiumBorder(side: BorderSide.none),
          ),
          onPressed: () {},
          child: const Text(
            'See Details',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
