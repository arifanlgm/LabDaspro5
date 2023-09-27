program ProgramBiodata;

var
  nama, nim, kom, alamat: string;

begin
  write('Masukkan Nama Anda: ');
  readln(nama);

  write('Masukkan NIM Anda: ');
  readln(nim);

  write('Masukkan KOM Anda: ');
  readln(kom);

  write('Masukkan Alamat Anda: ');
  readln(alamat);

  writeln('Hallo, Nama saya ', nama, ', NIM saya ', nim, ', saya di KOM ', kom, ', alamat saya di ',alamat,'. Salam Kenal Semua!');
end.