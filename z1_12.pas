var
  filetext: text;
  a: string;
  i: integer;

begin
  // Writing numbers to the file
  assign(filetext, 'C:\lr12\text.txt.txt');
  rewrite(filetext);

  for i := 1 to 10 do
    writeln(filetext, i);

  close(filetext);

  // Reading and displaying numbers from the file
  assign(filetext, 'C:\lr12\text.txt.txt');
  reset(filetext);

  for i := 1 to 10 do
  begin
    readln(filetext, a);
    writeln('Number ', i, ': ', a);
  end;

  close(filetext);
end.