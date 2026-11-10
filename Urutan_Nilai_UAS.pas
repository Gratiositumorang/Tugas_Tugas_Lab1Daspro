program Urutan_Nilai_UAS;
//soal nomor 3//
var
  nilai: array[1..10] of real;
  n, i, j: integer;
  temp: real;

begin
  { masukkan jumlah mahasiswa (1 <= n <= 10) }
  repeat
    write('Jumlah mahasiswa (1-10) : ');
    readln(n);
    if (n < 1) or (n > 10) then
      writeln('Input tidak valid! Harus 1 sampai 10.');
  until (n >= 1) and (n <= 10);

  { masukkan nilai UAS }
  for i := 1 to n do
  begin
    write('Nilai UAS mahasiswa ke-', i, ' : ');
    readln(nilai[i]);
  end;

  { Mengurutkan dari terendah ke tertinggi (bubble sort) }
  for i := 1 to n - 1 do
    for j := 1 to n - i do
      if nilai[j] > nilai[j + 1] then
      begin
        temp := nilai[j];
        nilai[j] := nilai[j + 1];
        nilai[j + 1] := temp;
      end;

  { Menampilkan hasil }
  writeln;
  writeln('Nilai UAS terurut (terendah ke tertinggi):');
  for i := 1 to n do
    writeln(i, '. ', nilai[i]:0:2);

  writeln;
  write('Tekan Enter untuk keluar...');
  readln;
end.