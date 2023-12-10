uses crt, SysUtils;

type 
    mahasiswa = record
        nama : string;
        nim : string[9];
        sebutanNilai : string[2];
        tnilai : real;
        ip : real;
    end;

    matkul = record
        namatkul : string;
        sks : byte;
    end;

var
    txt: textfile;
    filename: string; 
    i, j, jmlhMatkul: integer; 
    var_mahasiswa : mahasiswa;
    var_matkul: array [1..20] of matkul;
    jmlhSKS: integer;
    nilai_matkul: array [1..20] of string; 

procedure lineSatu;
begin
    writeln(txt, '=================');
end;

procedure lineDua;
begin
    writeln('=================');
end;

procedure lineTiga;
begin
    writeln(txt, '|==========================================|');
end;

function konversiABC(sebutanNilai: string): real;
begin
    case sebutanNilai of
        'A': konversiABC := 4.0;
        'B+': konversiABC := 3.5;
        'B': konversiABC := 3.0;
        'C+': konversiABC := 2.5;
        'C': konversiABC := 2.0;
        'D': konversiABC := 1.0;
        'E': konversiABC := 0.0;
    else
        begin
            writeln('Salah memasukkan nilai!');
            konversiABC := 0.0;
        end;
    end;
end;

begin
    clrscr;
    write('Jumlah Matkul: ');
    readln(jmlhMatkul);
    jmlhSKS := 0;
    for i := 1 to jmlhMatkul do 
    begin
        clrscr;
        with var_matkul[i] do 
        begin
            writeln('Matkul [', i, ']');
            lineDua;
            write('Nama Matkul : ');
            readln(namatkul);
            write('SKS         : ');
            readln(sks);
            jmlhSKS := jmlhSKS + sks;
        end;
    end;
     
    with var_mahasiswa do 
    begin
        clrscr;
        writeln('Mahasiswa');
        lineDua;
        writeln;
        write('Nama : ');
        readln(nama);
        write('NIM  : ');
        readln(nim);
    end;
    
    var_mahasiswa.tnilai := 0;

    for j := 1 to jmlhMatkul do
    begin
        write('Nilai ', var_matkul[j].namatkul, ': ');
        readln(nilai_matkul[j]); 
        var_mahasiswa.tnilai := var_mahasiswa.tnilai + (konversiABC(nilai_matkul[j]) * var_matkul[j].sks);
    end;  

    var_mahasiswa.ip := var_mahasiswa.tnilai / jmlhSKS;

    filename := 'KHS_' + var_mahasiswa.nim + '_' + var_mahasiswa.nama + '.txt';
    Assign(txt, filename);

    rewrite(txt); 

    writeln(txt, 'Kartu Hasil Studi');
    lineSatu;
    writeln(txt);
    with var_mahasiswa do 
    begin
        writeln(txt, 'Nama   : ', nama);
        writeln(txt, 'NIM    : ', nim);
    end;
    writeln(txt);
    lineTiga;
    writeln(txt, '|No.|Matkul                          |Nilai|');
    lineTiga;
    for i := 1 to jmlhMatkul do
    with var_matkul[i] do 
    begin
        write(txt, '|',i , '. |', namatkul);
        for j := 1 to (32 - length(namatkul)) do
            write(txt, ' ');
        write(txt, '|', nilai_matkul[i],'    |');
        for j := 1 to (5 - length(nilai_matkul[i])) do
            write(txt, ' ');
        writeln(txt);
    end;
    lineTiga;
    writeln(txt);
    writeln(txt, 'Total SKS  : ', jmlhSKS);
    writeln(txt, 'IP Semester: ', var_mahasiswa.ip:0:2);

    writeln(txt); 

    close(txt);
    writeln('File .txt telah dibuat!');

end.