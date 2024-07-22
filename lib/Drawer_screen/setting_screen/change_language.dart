import 'package:flutter/material.dart';

class ChangeLanguages extends StatefulWidget {
  const ChangeLanguages({Key? key}) : super(key: key);

  @override
  _ChangeLanguagesPageState createState() => _ChangeLanguagesPageState();
}

class _ChangeLanguagesPageState extends State<ChangeLanguages> {
  String _selectedLanguage = 'English';

  final List<Map<String, String>> _languages = [
    {
      'name': 'English',
      'flag':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Flag_of_the_United_States_%28DoS_ECA_Color_Standard%29.svg/1200px-Flag_of_the_United_States_%28DoS_ECA_Color_Standard%29.svg.png'
    },
    {
      'name': 'Hindi',
      'flag':
          'https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png'
    },
    {
      'name': 'French',
      'flag':
          'https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/Flag_of_France.svg/255px-Flag_of_France.svg.png'
    },
    {
      'name': 'Arabic',
      'flag':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdXMZXM1pLYC1ERkj6BYKEqZoXQ_pWFq_1tQ&s'
    },
    {
      'name': 'German',
      'flag':
          'https://s.yimg.com/zb/imgv1/7707242a-6463-30f0-bc2a-4386b4193cf7/t_500x300'
    },
    {
      'name': 'Portuguese',
      'flag':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_Portugal.svg/1200px-Flag_of_Portugal.svg.png'
    },
    {
      'name': 'Turkish',
      'flag':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Flag_of_Turkey.svg/1200px-Flag_of_Turkey.svg.png'
    },
    {
      'name': 'Dutch',
      'flag':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Flag_of_the_Netherlands.svg/255px-Flag_of_the_Netherlands.svg.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Change Language',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _languages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 87, 92, 96),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ListTile(
                      leading: Image.network(
                        _languages[index]['flag']!,
                        width: 50,
                        height: 50,
                      ),
                      title: Text(_languages[index]['name']!),
                      trailing: _selectedLanguage == _languages[index]['name']
                          ? Icon(Icons.check_circle, color: Colors.green)
                          : null,
                      onTap: () {
                        setState(() {
                          _selectedLanguage = _languages[index]['name']!;
                        });
                      },
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                print('Selected Language: $_selectedLanguage');
              },
              child: Text('Save'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                foregroundColor: Colors.white,
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
