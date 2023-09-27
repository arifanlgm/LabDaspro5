program ProgramAlamat;

var
  jalan, no, kota, pos: string;

begin
  write('Input nama jalan: ');
  readln(jalan);

  write('Input nomor rumah: ');
  readln(no);

  write('Input nama kota: ');
  readln(kota);

  write('Input kode pos: ');
  readln(pos);

  writeln('Alamat: Jalan ', jalan, ' No. ', no,' ', kota,' ', pos);
end.