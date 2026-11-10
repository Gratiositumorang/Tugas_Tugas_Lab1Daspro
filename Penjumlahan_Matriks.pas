program Penjumlahan_Matriks;
//soal nomor 2//

var
  A, B, C: array[1..5, 1..5] of integer;
  b1, k1, b2, k2, i, j: integer;

begin
  { masukkan ukuran matriks ke-1 dan ke-2 (maksimal 5) }
  repeat
    write('Baris dan kolom matriks 1 (1-5) : ');
    readln(b1, k1);
  until (b1 >= 1) and (b1 <= 5) and (k1 >= 1) and (k1 <= 5);

  repeat
    write('Baris dan kolom matriks 2 (1-5) : ');
    readln(b2, k2);
  until (b2 >= 1) and (b2 <= 5) and (k2 >= 1) and (k2 <= 5);

  { bisa dijumlahkan kalo ukuran kedua matriks sama }
  if (b1 = b2) and (k1 = k2) then
  begin
    writeln('Kedua matriks DAPAT dijumlahkan.');

    writeln('Isi matriks 1:');
    for i := 1 to b1 do
      for j := 1 to k1 do
      begin
        write('A[', i, ',', j, '] = ');
        readln(A[i, j]);
      end;

    writeln('Isi matriks 2:');
    for i := 1 to b2 do
      for j := 1 to k2 do
      begin
        write('B[', i, ',', j, '] = ');
        readln(B[i, j]);
      end;

    writeln('Hasil penjumlahan:');
    for i := 1 to b1 do
    begin
      for j := 1 to k1 do
      begin
        C[i, j] := A[i, j] + B[i, j];
        write(C[i, j]:6);
      end;
      writeln;
    end;
  end
  else
    writeln('Kedua matriks TIDAK DAPAT dijumlahkan (ukuran berbeda).');

  readln;
end.