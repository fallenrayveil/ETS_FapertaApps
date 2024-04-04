class Prodi{
  String name;
  String imageUrl;
  String profile;
  String visi;
  String akreditasi;
  String kaprodi;
  String lamanWebsite;
  String email;


  List<Dosen> dosens;
  List<PrestasiMahasiswa> prestasiMahasiswa;
  List<Misi> misi;

  Prodi(this.name, this.imageUrl, this.profile, this.visi, this.misi, this.akreditasi, this.kaprodi, this.lamanWebsite,this.email, this.prestasiMahasiswa, this.dosens);

  static List<Prodi> samples = [
    Prodi('S1-Agroteknologi', 
    'assets/agroteknologi.png', 
    'Jurusan Agroteknologi, Fakultas Pertanian UPN “Veteran” Jawa Timur berdiri pada tanggal 17 Mei 1968 dan diresmikan oleh Menteri Urusan Veteran dan Demobilisasi Republik Indonesia, dengan Surat Keputusan Pendirian Kajian Program No: 062/Kpts/Mentransvet/68, SK Izin Operasional No. 321/D/T/2008 didukung dengan SK penggabungan Program Studi No. 321/D/T/2008: 321/D/T/2008 didukung dengan surat keputusan penggabungan Program Studi No. 2449/D/T/2009: 2449/D/T/2009.',
    '“Menjadi program studi Agroteknologi unggul dalam penyelenggaraan pendidikan pertanian yang berkualitas berbasis IPTEK dan kewirausahaan guna pengembangan IPTEKS pertanian yang berkarakter belanegara.”',
    [
      Misi('1.)Menyelenggarakan pendidikan pertanian yang berkualitas berbasis ipteks dan kewirausahaan untuk menghasilkan lulusan yang berkarakter dan berdaya saing di dunia kerja.'),
      Misi('2.)Menyelenggarakan dan mengembangkan penelitian yang berorientasi global untuk meningkatkan kesejahteraan masyarakat.'),
      Misi('3.)Menyelenggarakan pengabdian kepada masyarakat melalui pembinaan dan pendampingan berbasis ipteks dan kearifan lokal.'),
      Misi('4.)Mengimplementasikan kerjasama terdapat dengan stakeholder nasional dan internasional.'),
      Misi('5.)Mengembangkan kualitas sumberdaya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan dan manajerial di bidang Agroteknologi.'),
      Misi('6.)Meningkatkan sistem pengelolaan sarana dan prasarana terpadu.'),
      Misi('7.)Menyelenggarakan kerjasama institusional dengan stakeholder baik di bidang Agroteknologi baik dalam dan luar negeri.'),
    ], 'A', 
    'Dr. Ir. Bakti Wisnu Widjajani, M.P.', 
    'https://agrotek.upnjatim.ac.id/',
    'agrotek@upnjatim.ac.id', 
    [
      PrestasiMahasiswa('a'),
      PrestasiMahasiswa('a'),
      PrestasiMahasiswa('a')
    ], 
    [
      Dosen('Dr.Ir.Ramdan Hidayat, MS'),
      Dosen('Dr.Ir.Pangesti Nugrahani, MS.i'),
      Dosen('Dr.Ir.Sukendah, M.Sc'),
      Dosen('Prof.Dr.Ir.Juli Santoso, MP'),
      Dosen('Dr.Ir.R.A Nora Augustien K., MP'),
      Dosen('Dr.Ir.Ida Retno Moeljani, MP'),
      Dosen('Dr.Dra.Sutini, M.Pd'),
      Dosen('Dr.Felicitas Deru Dewanti, SP, MP'),
      Dosen('Dr.Ir.Makhziah, MP'),
      Dosen('Ir.Hadi Suhardjono, MTp'),
      Dosen('Ir.Agus Sulistyono, MP'),
      Dosen('Ir.Rr.Djarwatiningsih P.S., MP'),
      Dosen('Ir.Widiwurjani, MP'),
      Dosen('Ir.Didik Utomo Pribadi, MP'),
      Dosen('Ir.Yonny Koentjoro, MM'),
      Dosen('Puji Lestari Tarigan, SP, M.Sc'),
      Dosen('Nova Triani, SP, MP'),
      Dosen('Saefurrohman, SP, M.Sc.'),
      Dosen('Fadila Suryandika, STP, MSc'),
      Dosen('Dr.Ir.Wanti Mindari, MP'),
      Dosen('Dr.Ir.Bakti Wisnu Widjajani, MP'),
      Dosen('Dr.Ir.Maroeto, MP'),
      Dosen('Dr.Ir.Rossyda Priyadarshini, MP'),
      Dosen('Dr.Ir.Moch. Arifin, MT'),
      Dosen('Ir.Kemal Wijaya, MT'),
      Dosen('Ir.Purwadi, MP'),
      Dosen('Ir.Siswanto, MT'),
      Dosen('Ir.R.Purnomo Edi Sasongko, MP'),
      Dosen('Haidar Fari Aditya, SP. MP.'),
      Dosen('Fitri Wijayanti. SP. MP.'),
      Dosen('Dr.Ir.Tri Mujoko, MP'),
      Dosen('Dr.Ir.Sri Wiyatiningsih, MP'),
      Dosen('Dr.Ir.Penta Suryaminarsih, MP'),
      Dosen('Dr.Ir.Wiwin Windriyanti, MP'),
      Dosen('Dr.Ir.Herry Nirwanto, MP'),
      Dosen('Dr.Ir.Yenny Wuryandari, MP'),
      Dosen('Dr.Ir.Arika Purnawati, MP'),
      Dosen('Dr.Dra.Endang Tri Wahyu P., M.Si'),
      Dosen('drh.Wiludjeng Widajati, MP'),
      Dosen('Ramadhani Mahendra Kusuma, SP. MP. M.Sc'),
      Dosen('Safira Rizka Lestari, SP, MP'),
      Dosen('Noni Rahmadhini, SP, M.Sc'),
      Dosen('Dita Megasari, SP, M.Si'),
    ]),
    Prodi('S1-Agribisnis', 
    'assets/agribisnis.png', 
    'SEJARAH SINGKAT  JURUSAN AGRIBISNIS SEBAGAI UNIT PENGELOLA PROGRAM STUDI Fakultas Pertanian Universitas Pembangunan Nasional “Veteran” Jawa Timur Fakultas Pertanian sudah berdiri selama 51 tahun tepatnya sejak tanggal 17 Mei 1968.',
    'Visi Keilmuan Program Studi Agribisnis, Fakultas Pertanian, UPN “Veteran” Jawa Timur adalah terwujudnya Program Studi Agribisnis Fakultas Pertanian UPNVJT yang unggul dalam Agripreneurship Digital, menghasilkan sumberdaya manusia profesional, dan berkarakter bela negara.',
    [
      Misi('1.)Menyelenggarakan pendidikan Agribisnis yang berbasis teknologi digital untuk menghasilkan lulusan yang unggul dalam Agripreneurship Digital.'),
      Misi('2.)Mengembangkan kurikulum yang relevan dengan tuntutan pasar dan teknologi terkini untuk mendukung pengembangan sumber daya manusia profesional di bidang Agribisnis.'),
      Misi('3.)Mendorong penelitian dan pengembangan inovatif dalam Agribisnis Digital untuk meningkatkan daya saing dan kualitas produk pertanian.'),
      Misi('4.)Menyelenggarakan kegiatan pengabdian kepada masyarakat yang berorientasi pada pemberdayaan masyarakat petani dan pengusaha di bidang pertanian.'),
      Misi('5.)Mengintegrasikan nilai-nilai bela negara dalam setiap aspek kegiatan akademik dan non-akademik di lingkungan Program Studi Agribisnis Fakultas Pertanian UPNVJT.'),
    ], 'A', 
    'Prof. DR. Ir. Syarif Imam Hidayat, M.M.', 
    'https://agribis.upnjatim.ac.id/', 
    'agribisnis@upnjatim.ac.id',
    [
      PrestasiMahasiswa("1.)Penguatan Pelaksanaan Agripreneur Digital dengan Mitra dalam Program Kompetisi Kampus Merdeka (PKKM) Magang dan Pelatihan Digital Marketing."),
      PrestasiMahasiswa("2.)Program Studi Agribisnis UPN “Veteran” Jawa Timur Gelar “Agripreneur Digital Camp” Dorong Peningkatan Pemanfaatan Digital Marketing."),
      PrestasiMahasiswa("3.)Mahasiswa Universitas Pembangunan Nasional “Veteran” Jawa Timur Berhasil Mengubah Lahan Kosong Menjadi Taman TOGA.")
    ], 
    [
      Dosen('Prof. Dr. Ir. Syarif Imam Hidayat, M.M.'),
      Dosen('Dr. Ir. Nuriah Yuliati, M.P.'),
      Dosen('Dr. Ir. Mubarokah, M.T.'),
      Dosen('Dr. Ir. Hamidah Hendrarini, M.Si.'),
      Dosen('Dita Atasa,S.P., M.P.'),
      Dosen('Dr. Ida Syamsu Roidah, S.P.,M.MA.'),
      Dosen('Dr. Dona Wahyuning Laily, S.P., M.P.'),
      Dosen('Prof. Dr. Ir. Teguh Soedarto, M.P.'),
      Dosen('Prof. Dr. Ir. Sri Tjondro Winarno, M.M .'),
      Dosen('Dr. Ir. Indra Tjahaja Amir, M.P.'),
      Dosen('Dr. Ir. Pawana Nur Indah, M.Si.'),
      Dosen('Dr. Ir. Eko Nurhadi, M.S.'),
      Dosen('Dr. Ir. Endang Yektiningsih, M.P.'),
      Dosen('Dr. Gyska Indah Harya, S.P., M.Agr.'),
      Dosen('Ir. Sri Widayanti, M.P.'),
      Dosen('Dr. Noor Rizkiyah, S.P., M.P.'),
      Dosen('Dr. Fazlul Rahman, Lc., M.A.Hum.'),
      Dosen('Dr. Wahyu Santoso, SP., M.MA.'),
      Dosen('Dr. Ir. Taufik Setyadi, M.P.'),
      Dosen('Nisa Hafi Idhoh Fitriana, S.P., M.P.'),
      Dosen('Prasmita Dian Wijayati, SP., M.Si.'),
      Dosen('Ika Sari Tondang, S.P., M.Sc.'),
      Dosen('Risqi Firdaus Setiawan, S.P., M.P.'),
      Dosen('Fatchur Rozci, S. Agr., M. Agr.'),
      Dosen('Mirza Andrian Syah, S.P., M.P.')
    ]),
    Prodi('S2-Agroteknologi', 
    'assets/agroteknologi.png', 
    'Jurusan Agroteknologi, Fakultas Pertanian UPN “Veteran” Jawa Timur berdiri pada tanggal 17 Mei 1968 dan diresmikan oleh Menteri Urusan Veteran dan Demobilisasi Republik Indonesia, dengan Surat Keputusan Pendirian Kajian Program No: 062/Kpts/Mentransvet/68, SK Izin Operasional No. 321/D/T/2008 didukung dengan SK penggabungan Program Studi No. 321/D/T/2008: 321/D/T/2008 didukung dengan surat keputusan penggabungan Program Studi No. 2449/D/T/2009: 2449/D/T/2009.',
    '“Menjadi program studi Agroteknologi unggul dalam penyelenggaraan pendidikan pertanian yang berkualitas berbasis IPTEK dan kewirausahaan guna pengembangan IPTEKS pertanian yang berkarakter belanegara.”',
    [
      Misi('1.)Menyelenggarakan pendidikan pertanian yang berkualitas berbasis ipteks dan kewirausahaan untuk menghasilkan lulusan yang berkarakter dan berdaya saing di dunia kerja.'),
      Misi('2.)Menyelenggarakan dan mengembangkan penelitian yang berorientasi global untuk meningkatkan kesejahteraan masyarakat.'),
      Misi('3.)Menyelenggarakan pengabdian kepada masyarakat melalui pembinaan dan pendampingan berbasis ipteks dan kearifan lokal.'),
      Misi('4.)Mengimplementasikan kerjasama terdapat dengan stakeholder nasional dan internasional.'),
      Misi('5.)Mengembangkan kualitas sumberdaya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan dan manajerial di bidang Agroteknologi.'),
      Misi('6.)Meningkatkan sistem pengelolaan sarana dan prasarana terpadu.'),
      Misi('7.)Menyelenggarakan kerjasama institusional dengan stakeholder baik di bidang Agroteknologi baik dalam dan luar negeri.'),
    ], 'A', 
    'Dr. Ir. Bakti Wisnu Widjajani, M.P.', 
    'https://agrotek.upnjatim.ac.id/',
    'agrotek@upnjatim.ac.id', 
    [
      PrestasiMahasiswa('a'),
      PrestasiMahasiswa('a'),
      PrestasiMahasiswa('a')
    ], 
    [
      Dosen('Dr.Ir.Ramdan Hidayat, MS'),
      Dosen('Dr.Ir.Pangesti Nugrahani, MS.i'),
      Dosen('Dr.Ir.Sukendah, M.Sc'),
      Dosen('Prof.Dr.Ir.Juli Santoso, MP'),
      Dosen('Dr.Ir.R.A Nora Augustien K., MP'),
      Dosen('Dr.Ir.Ida Retno Moeljani, MP'),
      Dosen('Dr.Dra.Sutini, M.Pd'),
      Dosen('Dr.Felicitas Deru Dewanti, SP, MP'),
      Dosen('Dr.Ir.Makhziah, MP'),
      Dosen('Ir.Hadi Suhardjono, MTp'),
      Dosen('Ir.Agus Sulistyono, MP'),
      Dosen('Ir.Rr.Djarwatiningsih P.S., MP'),
      Dosen('Ir.Widiwurjani, MP'),
      Dosen('Ir.Didik Utomo Pribadi, MP'),
      Dosen('Ir.Yonny Koentjoro, MM'),
      Dosen('Puji Lestari Tarigan, SP, M.Sc'),
      Dosen('Nova Triani, SP, MP'),
      Dosen('Saefurrohman, SP, M.Sc.'),
      Dosen('Fadila Suryandika, STP, MSc'),
      Dosen('Dr.Ir.Wanti Mindari, MP'),
      Dosen('Dr.Ir.Bakti Wisnu Widjajani, MP'),
      Dosen('Dr.Ir.Maroeto, MP'),
      Dosen('Dr.Ir.Rossyda Priyadarshini, MP'),
      Dosen('Dr.Ir.Moch. Arifin, MT'),
      Dosen('Ir.Kemal Wijaya, MT'),
      Dosen('Ir.Purwadi, MP'),
      Dosen('Ir.Siswanto, MT'),
      Dosen('Ir.R.Purnomo Edi Sasongko, MP'),
      Dosen('Haidar Fari Aditya, SP. MP.'),
      Dosen('Fitri Wijayanti. SP. MP.'),
      Dosen('Dr.Ir.Tri Mujoko, MP'),
      Dosen('Dr.Ir.Sri Wiyatiningsih, MP'),
      Dosen('Dr.Ir.Penta Suryaminarsih, MP'),
      Dosen('Dr.Ir.Wiwin Windriyanti, MP'),
      Dosen('Dr.Ir.Herry Nirwanto, MP'),
      Dosen('Dr.Ir.Yenny Wuryandari, MP'),
      Dosen('Dr.Ir.Arika Purnawati, MP'),
      Dosen('Dr.Dra.Endang Tri Wahyu P., M.Si'),
      Dosen('drh.Wiludjeng Widajati, MP'),
      Dosen('Ramadhani Mahendra Kusuma, SP. MP. M.Sc'),
      Dosen('Safira Rizka Lestari, SP, MP'),
      Dosen('Noni Rahmadhini, SP, M.Sc'),
      Dosen('Dita Megasari, SP, M.Si'),
    ]),
    Prodi('S2-Agribisnis', 
    'assets/agribisnis.png', 
    'SEJARAH SINGKAT  JURUSAN AGRIBISNIS SEBAGAI UNIT PENGELOLA PROGRAM STUDI Fakultas Pertanian Universitas Pembangunan Nasional “Veteran” Jawa Timur Fakultas Pertanian sudah berdiri selama 51 tahun tepatnya sejak tanggal 17 Mei 1968.',
    'Visi Keilmuan Program Studi Agribisnis, Fakultas Pertanian, UPN “Veteran” Jawa Timur adalah terwujudnya Program Studi Agribisnis Fakultas Pertanian UPNVJT yang unggul dalam Agripreneurship Digital, menghasilkan sumberdaya manusia profesional, dan berkarakter bela negara.',
    [
      Misi('1.)Menyelenggarakan pendidikan Agribisnis yang berbasis teknologi digital untuk menghasilkan lulusan yang unggul dalam Agripreneurship Digital.'),
      Misi('2.)Mengembangkan kurikulum yang relevan dengan tuntutan pasar dan teknologi terkini untuk mendukung pengembangan sumber daya manusia profesional di bidang Agribisnis.'),
      Misi('3.)Mendorong penelitian dan pengembangan inovatif dalam Agribisnis Digital untuk meningkatkan daya saing dan kualitas produk pertanian.'),
      Misi('4.)Menyelenggarakan kegiatan pengabdian kepada masyarakat yang berorientasi pada pemberdayaan masyarakat petani dan pengusaha di bidang pertanian.'),
      Misi('5.)Mengintegrasikan nilai-nilai bela negara dalam setiap aspek kegiatan akademik dan non-akademik di lingkungan Program Studi Agribisnis Fakultas Pertanian UPNVJT.'),
    ], 'A', 
    'Prof. DR. Ir. Syarif Imam Hidayat, M.M.', 
    'https://agribis.upnjatim.ac.id/', 
    'agribisnis@upnjatim.ac.id',
    [
      PrestasiMahasiswa("1.)Penguatan Pelaksanaan Agripreneur Digital dengan Mitra dalam Program Kompetisi Kampus Merdeka (PKKM) Magang dan Pelatihan Digital Marketing."),
      PrestasiMahasiswa("2.)Program Studi Agribisnis UPN “Veteran” Jawa Timur Gelar “Agripreneur Digital Camp” Dorong Peningkatan Pemanfaatan Digital Marketing."),
      PrestasiMahasiswa("3.)Mahasiswa Universitas Pembangunan Nasional “Veteran” Jawa Timur Berhasil Mengubah Lahan Kosong Menjadi Taman TOGA.")
    ], 
    [
      Dosen('Prof. Dr. Ir. Syarif Imam Hidayat, M.M.'),
      Dosen('Dr. Ir. Nuriah Yuliati, M.P.'),
      Dosen('Dr. Ir. Mubarokah, M.T.'),
      Dosen('Dr. Ir. Hamidah Hendrarini, M.Si.'),
      Dosen('Dita Atasa,S.P., M.P.'),
      Dosen('Dr. Ida Syamsu Roidah, S.P.,M.MA.'),
      Dosen('Dr. Dona Wahyuning Laily, S.P., M.P.'),
      Dosen('Prof. Dr. Ir. Teguh Soedarto, M.P.'),
      Dosen('Prof. Dr. Ir. Sri Tjondro Winarno, M.M .'),
      Dosen('Dr. Ir. Indra Tjahaja Amir, M.P.'),
      Dosen('Dr. Ir. Pawana Nur Indah, M.Si.'),
      Dosen('Dr. Ir. Eko Nurhadi, M.S.'),
      Dosen('Dr. Ir. Endang Yektiningsih, M.P.'),
      Dosen('Dr. Gyska Indah Harya, S.P., M.Agr.'),
      Dosen('Ir. Sri Widayanti, M.P.'),
      Dosen('Dr. Noor Rizkiyah, S.P., M.P.'),
      Dosen('Dr. Fazlul Rahman, Lc., M.A.Hum.'),
      Dosen('Dr. Wahyu Santoso, SP., M.MA.'),
      Dosen('Dr. Ir. Taufik Setyadi, M.P.'),
      Dosen('Nisa Hafi Idhoh Fitriana, S.P., M.P.'),
      Dosen('Prasmita Dian Wijayati, SP., M.Si.'),
      Dosen('Ika Sari Tondang, S.P., M.Sc.'),
      Dosen('Risqi Firdaus Setiawan, S.P., M.P.'),
      Dosen('Fatchur Rozci, S. Agr., M. Agr.'),
      Dosen('Mirza Andrian Syah, S.P., M.P.')
    ]),
    Prodi('S3-Agribisnis', 
    'assets/agribisnis.png', 
    'SEJARAH SINGKAT  JURUSAN AGRIBISNIS SEBAGAI UNIT PENGELOLA PROGRAM STUDI Fakultas Pertanian Universitas Pembangunan Nasional “Veteran” Jawa Timur Fakultas Pertanian sudah berdiri selama 51 tahun tepatnya sejak tanggal 17 Mei 1968.',
    'Visi Keilmuan Program Studi Agribisnis, Fakultas Pertanian, UPN “Veteran” Jawa Timur adalah terwujudnya Program Studi Agribisnis Fakultas Pertanian UPNVJT yang unggul dalam Agripreneurship Digital, menghasilkan sumberdaya manusia profesional, dan berkarakter bela negara.',
    [
      Misi('1.)Menyelenggarakan pendidikan Agribisnis yang berbasis teknologi digital untuk menghasilkan lulusan yang unggul dalam Agripreneurship Digital.'),
      Misi('2.)Mengembangkan kurikulum yang relevan dengan tuntutan pasar dan teknologi terkini untuk mendukung pengembangan sumber daya manusia profesional di bidang Agribisnis.'),
      Misi('3.)Mendorong penelitian dan pengembangan inovatif dalam Agribisnis Digital untuk meningkatkan daya saing dan kualitas produk pertanian.'),
      Misi('4.)Menyelenggarakan kegiatan pengabdian kepada masyarakat yang berorientasi pada pemberdayaan masyarakat petani dan pengusaha di bidang pertanian.'),
      Misi('5.)Mengintegrasikan nilai-nilai bela negara dalam setiap aspek kegiatan akademik dan non-akademik di lingkungan Program Studi Agribisnis Fakultas Pertanian UPNVJT.'),
    ], 'A', 
    'Prof. DR. Ir. Syarif Imam Hidayat, M.M.', 
    'https://agribis.upnjatim.ac.id/', 
    'agribisnis@upnjatim.ac.id',
    [
      PrestasiMahasiswa("1.)Penguatan Pelaksanaan Agripreneur Digital dengan Mitra dalam Program Kompetisi Kampus Merdeka (PKKM) Magang dan Pelatihan Digital Marketing."),
      PrestasiMahasiswa("2.)Program Studi Agribisnis UPN “Veteran” Jawa Timur Gelar “Agripreneur Digital Camp” Dorong Peningkatan Pemanfaatan Digital Marketing."),
      PrestasiMahasiswa("3.)Mahasiswa Universitas Pembangunan Nasional “Veteran” Jawa Timur Berhasil Mengubah Lahan Kosong Menjadi Taman TOGA.")
    ], 
    [
      Dosen('Prof. Dr. Ir. Syarif Imam Hidayat, M.M.'),
      Dosen('Dr. Ir. Nuriah Yuliati, M.P.'),
      Dosen('Dr. Ir. Mubarokah, M.T.'),
      Dosen('Dr. Ir. Hamidah Hendrarini, M.Si.'),
      Dosen('Dita Atasa,S.P., M.P.'),
      Dosen('Dr. Ida Syamsu Roidah, S.P.,M.MA.'),
      Dosen('Dr. Dona Wahyuning Laily, S.P., M.P.'),
      Dosen('Prof. Dr. Ir. Teguh Soedarto, M.P.'),
      Dosen('Prof. Dr. Ir. Sri Tjondro Winarno, M.M .'),
      Dosen('Dr. Ir. Indra Tjahaja Amir, M.P.'),
      Dosen('Dr. Ir. Pawana Nur Indah, M.Si.'),
      Dosen('Dr. Ir. Eko Nurhadi, M.S.'),
      Dosen('Dr. Ir. Endang Yektiningsih, M.P.'),
      Dosen('Dr. Gyska Indah Harya, S.P., M.Agr.'),
      Dosen('Ir. Sri Widayanti, M.P.'),
      Dosen('Dr. Noor Rizkiyah, S.P., M.P.'),
      Dosen('Dr. Fazlul Rahman, Lc., M.A.Hum.'),
      Dosen('Dr. Wahyu Santoso, SP., M.MA.'),
      Dosen('Dr. Ir. Taufik Setyadi, M.P.'),
      Dosen('Nisa Hafi Idhoh Fitriana, S.P., M.P.'),
      Dosen('Prasmita Dian Wijayati, SP., M.Si.'),
      Dosen('Ika Sari Tondang, S.P., M.Sc.'),
      Dosen('Risqi Firdaus Setiawan, S.P., M.P.'),
      Dosen('Fatchur Rozci, S. Agr., M. Agr.'),
      Dosen('Mirza Andrian Syah, S.P., M.P.')
    ]),
    
    
  ];

}

class Dosen{
  String name;

  Dosen(this.name,);
}

class Misi {
  String misi;

  Misi(this.misi);
}

class PrestasiMahasiswa {
  String prestasiMahasiswa;

  PrestasiMahasiswa(this.prestasiMahasiswa);
}