var
  filetext: text;
  N, K, i, j: integer;
  line: string;

begin
  // Ввод значений N и K
  writeln('Введите число строк N:');
  readln(N);

  writeln('Введите длину строки K:');
  readln(K);

  // Создание и запись в файл
  assign(filetext, 'output.txt');
  rewrite(filetext);

  for i := 1 to N do
  begin
    line := '';
    for j := 1 to K do
      line := line + '*';

    writeln(filetext, line);
  end;

  close(filetext);
end.
//assign(filetext, 'output.txt');устанавливает файловый поток для файла с именем "output.txt".
//rewrite(filetext);открывает файл для записи (если файл существует, его содержимое будет удалено).
//Вложенный цикл for j := 1 to K do line := line + '*'; создает строку из K звездочек.
//writeln(filetext, line);записывает строку в файл.
//close(filetext); закрывает файл после записи.