import 'package:flutter/material.dart';
import 'package:appwrite/models.dart' as models;
import 'package:appwrite/appwrite.dart';
import 'package:futo_alert/src/core/utils/loggers.dart';

class CountryListView extends StatefulWidget {
  const CountryListView({super.key});

  @override
  State<CountryListView> createState() => _CountryListViewState();
}

class _CountryListViewState extends State<CountryListView> {
  List<models.Country> _countryList = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) => getCountryList(),
    );
  }

  void getCountryList() {
    Client client = Client();
    client
        .setEndpoint("https://cloud.appwrite.io/v1")
        .setProject('673c64df001507ee9849');
    Locale locale = Locale(client);

    Future<models.CountryList> results = locale.listCountries();
    results.then(
      (resp) {
        setState(() {
          _countryList = resp.countries;
        });
      },
    ).catchError((error) {
      debugLog('Error: $error');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Countries List'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _countryList
              .map(
                (e) => Text(e.name),
              )
              .toList(),
        ),
      ),
    );
  }
}
