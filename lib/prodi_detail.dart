import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'prodi.dart';

class ProdiDetail extends StatelessWidget {
  final Prodi prodi;
  
 

  const ProdiDetail({Key? key, required this.prodi}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(prodi.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Image(
                        image: AssetImage(prodi.imageUrl),
                        width: 100,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                prodi.profile,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Visi Keilmuan:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                prodi.visi,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Misi:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: prodi.misi
                  .map(
                    (misi) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: ListTile(
                        title: Text(
                          misi.misi,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Kepala Program Studi:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                prodi.kaprodi,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Laman Website:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            GestureDetector(
              onTap: () async {
                
                  await _launchURL(prodi.lamanWebsite);
               
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  prodi.lamanWebsite,
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Email:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            GestureDetector(
  onTap: () async {
   
    await _sendMail(prodi.email);
  },
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      prodi.email,
      style: TextStyle(fontSize: 16, color: Colors.blue),
    ),
  ),
),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Prestasi Mahasiswa:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: prodi.prestasiMahasiswa
                  .map(
                    (prestasi) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: ListTile(
                        title: Text(
                          prestasi.prestasiMahasiswa,
                          textAlign: TextAlign.justify,
                          ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Dosen:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: prodi.dosens
                  .map(
                    (dosen) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: ListTile(
                        title: Text(dosen.name),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  
}
_launchURL(String urlAddress) async {
  final Uri url = Uri.parse(urlAddress);

    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
}

_sendMail(String emailAddress) async{
 final Uri params = Uri(
  scheme: 'mailto',
  path: emailAddress,
  query: 'subject=App Feedback&body=App Version 3.23', //add subject and body here
);

var url = params.toString();
var u = Uri.parse(url);
if (await canLaunchUrl(u)) {
  await launchUrl(u);
} else {
  throw 'Could not launch $url';
}

}
