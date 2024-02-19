import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PaytmHomePage(),
  ));
}

class PaytmHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Paytm'),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  color: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: Icon(Icons.account_circle, color: Colors.white, size: 40),
                    title: Text(
                      'Prathamesh Pawar',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    subtitle: Text(
                      'prathmeshr@gmail.com',
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.account_balance_wallet),
                  title: Text('Wallet'),
                  onTap: () {
                    // Navigate to wallet screen
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.money),
                  title: Text('Add Money'),
                  onTap: () {
                    // Navigate to add money screen
                  },
                ),
                ListTile(
                  leading: Icon(Icons.payment),
                  title: Text('Pay'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaymentOptionsPage()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.card_giftcard),
                  title: Text('Passbook'),
                  onTap: () {
                    // Navigate to passbook screen
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.local_offer),
                  title: Text('Deals'),
                  onTap: () {
                    // Navigate to deals screen
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_basket),
                  title: Text('Shop'),
                  onTap: () {
                    // Navigate to shop screen
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () {
                    // Navigate to settings screen
                  },
                ),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text('Help & Support'),
                  onTap: () {
                    // Navigate to help & support screen
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Logout'),
                  onTap: () {
                    // Perform logout action
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PaymentOptionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Options'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to credit card payment page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreditCardPaymentPage()),
                );
              },
              child: Text('Credit Card'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to PayPal payment page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PayPalPaymentPage()),
                );
              },
              child: Text('PayPal'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to UPI transfer page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UPITransferPage()),
                );
              },
              child: Text('UPI Transfer'),
            ),
          ],
        ),
      ),
    );
  }
}

class CreditCardPaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Credit Card Payment'),
      ),
      body: Center(
        child: Text(
          'Credit card payment options go here',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class PayPalPaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PayPal Payment'),
      ),
      body: Center(
        child: Text(
          'PayPal payment options go here',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class UPITransferPage extends StatelessWidget {
  final TextEditingController upiIdController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UPI Transfer'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: upiIdController,
              decoration: InputDecoration(labelText: 'Enter UPI ID'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Enter Name'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Process UPI payment
                String upiId = upiIdController.text;
                String name = nameController.text;

                // Implement payment logic here

                // Show confirmation dialog or navigate to success screen
              },
              child: Text('Pay'),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.signal_wifi_off),
              title: Text('Internet Connectivity Lost'),
              onTap: () {
                // Handle action when internet connectivity is lost
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InternetConnectivityLostPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class InternetConnectivityLostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internet Connectivity Lost'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Generate a demo bank balance image
                String imagePath = 'assets/demo_bank_balance_image.png'; // Static image representing Rs. 100 bank balance
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BankBalanceImagePage(imagePath: imagePath)),
                );
              },
              child: Text('Generate Bank Balance Image'),
            ),
            SizedBox(height: 20),
            Text(
              'Scan this image to view your bank balance',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class BankBalanceImagePage extends StatelessWidget {
  final String imagePath;

  const BankBalanceImagePage({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bank Balance Image'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to the previous page
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
