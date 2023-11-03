Program HitungVolumeDanLuasPermukaanTabung;
uses crt;
var
t,r,lp,v,d:real;
  const
  pi = 3.1416;

    begin
    clrscr;
    write('Masukkan Diameter: ');
    readln(d);
    write('Masukkan Tinggi: ');
    readln(t);

  r := d/2;
  v := pi*r*r*t;
  lp := 2*pi*r*(r+t);

writeln('Volume: ',v:0:3);
writeln('Luas Permukaan: ',lp:0:3);

end.