Program BilGanKel3;
uses crt;
    var
    i,n,j:integer;

begin
clrscr;
write ('Mulai dari: ');
readln(n);

    for i:= n downto 0 do
        begin
        
        if (i mod 2 <> 0) and (i mod 3 = 0) then

            begin
            write(i,' ');
            end;

        end;

end.