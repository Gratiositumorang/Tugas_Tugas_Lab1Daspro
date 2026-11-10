program BiodataMahasiswa_soal1;
uses crt;

type
  TMhs = record
    nama, nim, alamat, nohp, tempat : string[30];
    tgl, bln, thn : integer;
  end;

var
  m : array[1..50] of TMhs;
  n, i : integer;

begin
  clrscr;
  write('Jumlah mahasiswa : '); readln(n);

  for i := 1 to n do
    with m[i] do
    begin
      writeln('--- Mahasiswa ke-', i, ' ---');
      write('Nama          : '); readln(nama);
      write('NIM           : '); readln(nim);
      write('Alamat        : '); readln(alamat);
      write('No. HP        : '); readln(nohp);
      write('Tempat Lahir  : '); readln(tempat);
      write('Tanggal Lahir : '); readln(tgl);
      write('Bulan (angka) : '); readln(bln);
      write('Tahun         : '); readln(thn);
    end;

  clrscr;
  for i := 1 to n do
    with m[i] do
    begin
      writeln('Mahasiswa ke-', i);
      writeln('Nama   : ', nama);
      writeln('NIM    : ', nim);
      writeln('Alamat : ', alamat);
      writeln('No. HP : ', nohp);
      writeln('TTL    : ', tempat, ', ', tgl, '-', bln, '-', thn);
      writeln;
    end;

  readln;
end.