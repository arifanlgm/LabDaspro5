program IdentifikasiNIMmahasiswaUSU;
uses crt;
var
  Nama, NIM: string;
  Stambuk, KodeFakultas, KodeProdi, NomorUrut: string;
  Fakultas, Prodi, Jalur: string;
  Kelas: char;
  i, NumUrut: integer;

begin
ClrScr;
  write('Nama: ');
  readln(Nama);
  write('NIM : ');
  readln(NIM);

  Stambuk := Copy(NIM, 1, 2);
  KodeFakultas := Copy(NIM, 3, 2);
  KodeProdi := Copy(NIM, 5, 2);
  NomorUrut := Copy(NIM, 7, 3);

  Val(NomorUrut, NumUrut, i);

  case KodeFakultas of
    '01': Fakultas := 'Kedokteran';
    '02': Fakultas := 'Hukum';
    '03': Fakultas := 'Pertanian';
    '04': Fakultas := 'Teknik';
    '05': Fakultas := 'Ekonomi dan Bisnis';
    '06': Fakultas := 'Kedokteran Gigi';
    '07': Fakultas := 'Ilmu Budaya';
    '08': Fakultas := 'Matematika dan Ilmu Pengetahuan';
    '09': Fakultas := 'Ilmu Sosial dan Politik';
    '10': Fakultas := 'Kesehatan Masyarakat';
    '11': Fakultas := 'Keperawatan';
    '12': Fakultas := 'Kehutanan';
    '13': Fakultas := 'Psikologi';
    '14': Fakultas := 'Ilmu Komputer dan Teknologi Informasi';
    '15': Fakultas := 'Farmasi'
    else
      Fakultas := 'Fakultas Tidak Diketahui';
  end;

  case Fakultas of
    'Kedokteran':
      case KodeProdi of
        '00': Prodi := 'Kedokteran Gigi';
        else
          Prodi := 'Prodi Tidak Diketahui';
      end;
    
        'Hukum':
      case KodeProdi of
        '00': Prodi := 'Ilmu Hukum';
        else
          Prodi := 'Prodi Tidak Diketahui';
      end;

    'Pertanian':
      case KodeProdi of
        '01': Prodi := 'Agroteknologi';
        '02': Prodi := 'Manajemen Sumberdaya Perairan';
        '03': Prodi := 'Agribisnis';
        '05': Prodi := 'Teknologi Pangan';
        '06': Prodi := 'Peternakan';
        '08': Prodi := 'Teknik Pertanian dan Biosistem';
        '10': Prodi := 'Agroteknologi (PSDKU)';
        else
          Prodi := 'Prodi Tidak Diketahui';
      end;

    'Teknik':
      case KodeProdi of
        '01': Prodi := 'Teknik Mesin';
        '02': Prodi := 'Teknik Elektro';
        '03': Prodi := 'Teknik Industri';
        '04': Prodi := 'Teknik Sipil';
        '05': Prodi := 'Teknik Kimia';
        '06': Prodi := 'Arsitektur';
        '17': Prodi := 'Teknologi Lingkungan';
        '31': Prodi := 'Pendidikan Profesi Insinyur';
        else
          Prodi := 'Prodi Tidak Diketahui';
      end;

    'Ekonomi dan Bisnis':
      case KodeProdi of
        '01': Prodi := 'Ekonomi Pembangunan';
        '02': Prodi := 'Manajemen';
        '03': Prodi := 'Akuntansi';
        '04': Prodi := 'Kewirausahaan';
        else
          Prodi := 'Prodi Tidak Diketahui';
      end;

    'Kedokteran Gigi':
      case KodeProdi of
        '01': Prodi := 'Sarjana Kedokteran Gigi';
        '02': Prodi := 'Profesi Kedokteran Gigi';
        else
          Prodi := 'Prodi Tidak Diketahui';
      end;

    'Ilmu Budaya':
      case KodeProdi of
        '01': Prodi := 'Sastra Indonesia';
        '02': Prodi := 'Sastra Melayu';
        '03': Prodi := 'Sastra Batak';
        '04': Prodi := 'Sastra Arab';
        '05': Prodi := 'Sastra Inggris';
        '06': Prodi := 'Ilmu Sejarah';
        '07': Prodi := 'Etnomusikogoli';
        '08': Prodi := 'Sastra Jepang';
        '09': Prodi := 'Perpustakaan dan Sains Informasi';
        '10': Prodi := 'Bahasa Mandarin';
        else
          Prodi := 'Prodi Tidak Diketahui';
      end;

    'Matematika dan Ilmu Pengetahuan':
      case KodeProdi of
        '01': Prodi := 'Fisika';
        '02': Prodi := 'Kimia';
        '03': Prodi := 'Matematika';
        '05': Prodi := 'Biologi';
        else
          Prodi := 'Prodi Tidak Diketahui';
      end;

    'Ilmu Sosial dan Politik':
      case KodeProdi of
        '01': Prodi := 'Sosiologi';
        '02': Prodi := 'Ilmu Kesejahteraan Sosial';
        '03': Prodi := 'Ilmu Administrasi Publik';
        '04': Prodi := 'Ilmu Komunikasi';
        '05': Prodi := 'Antropologi Sosial';
        '06': Prodi := 'Ilmu Politik';
        '07': Prodi := 'Ilmu Administrasi Bisnis';
        else
          Prodi := 'Prodi Tidak Diketahui';
      end;

    'Kesehatan Masyarakat':
      case KodeProdi of
        '00': Prodi := 'Kesehatan Masyarakat';
        '01': Prodi := 'Gizi';
        else
          Prodi := 'Prodi Tidak Diketahui';
      end;

    'Keperawatan':
      case KodeProdi of
        '00': Prodi := 'Sarjana Keperawatan';
        '01': Prodi := 'Profesi Ners';
        else
          Prodi := 'Prodi Tidak Diketahui';
      end;

    'Kehutanan':
      case KodeProdi of
        '01': Prodi := 'Kehutanan';
        else
          Prodi := 'Prodi Tidak Diketahui';
      end;

    'Psikologi':
      case KodeProdi of
        '01': Prodi := 'Psikologi';
        else
          Prodi := 'Prodi Tidak Diketahui';
      end;            

    'Ilmu Komputer dan Teknologi Informasi':
      case KodeProdi of
        '01': Prodi := 'Ilmu Komputer';
        '02': Prodi := 'Teknologi Informasi';
        else
          Prodi := 'Prodi Tidak Diketahui';
      end;

    'Farmasi':
      case KodeProdi of
        '01': Prodi := 'Farmasi';
        else
          Prodi := 'Prodi Tidak Diketahui';
      end;

    else
      Prodi := 'Prodi Tidak Diketahui';
  end;

  if NomorUrut <= '030' then
    Jalur := 'SNBP' else
  if NomorUrut <= '070' then
    Jalur := 'SNBT' else
  if NomorUrut >= '071' then
    Jalur := 'SMM'
  else
    Jalur := 'Jalur Tidak Diketahui';

  if (NumUrut mod 3 = 1) then
    Kelas := 'A'
  else if (NumUrut mod 3 = 2) then
    Kelas := 'B'
  else if (NumUrut mod 3 = 0) then
    Kelas := 'C';

ClrScr;
  writeln('Nama    : ', Nama);
  writeln('NIM     : ', NIM);
  writeln('Fakultas: ', Fakultas);
  writeln('Prodi   : ', Prodi);
  writeln('Jalur   : ', Jalur);
  writeln('Kelas   : ', Kelas);
end.