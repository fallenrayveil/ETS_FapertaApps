import 'package:flutter/material.dart';
import 'prodi.dart';
import 'prodi_detail.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const MaterialColor white = MaterialColor(
    0xFFFFFFFF,
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFFFFFFF),
      200: Color(0xFFFFFFFF),
      300: Color(0xFFFFFFFF),
      400: Color(0xFFFFFFFF),
      500: Color(0xFFFFFFFF),
      600: Color(0xFFFFFFFF),
      700: Color(0xFFFFFFFF),
      800: Color(0xFFFFFFFF),
      900: Color(0xFFFFFFFF),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Faperta Apps',
      theme: ThemeData(
        primarySwatch: white,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.green,
          titleTextStyle: TextStyle(color: Colors.white,
          fontSize: 26),
          actionsIconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      home: const MyHomePage(title: 'Faperta Apps'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Profil Fakultas Pertanian',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Fakultas Pertanian Universitas Pembangunan Nasional “Veteran” Jawa Timur merupakan salah satu lembaga pendidikan tinggi bidang pertanian di Indonesia yang berdiri sejak 17 Mei 1968.',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: Prodi.samples.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ProdiDetail(prodi: Prodi.samples[index]);
                          },
                        ),
                      );
                    },
                    child: buildProdiCard(Prodi.samples[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return UserProfile(); // Ganti dengan nama widget untuk tampilan profil Anda
                  },
                ),
              );
            },

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/gilang.jpg'), // Ganti dengan path gambar profil Anda
                  radius: 20,
                ),
                SizedBox(width: 8),
                Text(
                  'Gilang Hayu Rahmawan',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildProdiCard(Prodi prodi) {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image(
              image: AssetImage(prodi.imageUrl),
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),
          ),
          
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  prodi.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Palationo',
                  ),
                ),
                const SizedBox(height: 14.0),
                // Add other details here if needed
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  bool _isLoading = true; 

  final String nama = 'Gilang Hayu Rahmawan';
  final String ttl = 'Jombang, 17 Maret 2003';
  final String alamat =
      'Dsn.Wonokerto, Ds.Wonodadi, Kec.Mojosari, Kab.Mojokerto, Jawa Timur';
  final String nomor = '+62 812-3274-1329';
  final String email = 'fallenrayveil@gmail.com';
  final String githubUrl = 'https://github.com/fallenrayveil';
  final String pendidikan = 'Sistem Informasi - UPN Veteran Jawa Timur';
  final String penghargaan = '-'; 

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Saya'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView( 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile picture with loading animation
              _isLoading
                  ? Center(child: CircularProgressIndicator())
                  : CircleAvatar(
                      radius: 130,
                      backgroundImage: AssetImage('assets/gilang.jpg'),
                    ),
              SizedBox(height: 16),

              // Profile information sections
              _buildProfileSection('Nama:', nama),
              _buildProfileSection('TTL:', ttl),
              _buildProfileSection('Alamat:', alamat),
              _buildProfileSection('No. HP:', nomor),
              _buildProfileSection('Email:', email),
              _buildProfileSection(
                'Url Profil Github:',
                githubUrl,
                isUrl: true, 
              ),
              _buildProfileSection('Riwayat Pendidikan:', pendidikan),
              _buildProfileSection('Penghargaan:', penghargaan),
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildProfileSection(String title, String value, {bool isUrl = false}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 8),
        Flexible(
          child: isUrl
              ? GestureDetector(
                  onTap: () => launchUrlString(value),
                  child: Text(
                    value,
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              : Text(value),
        ),
      ],
    );
  }
}