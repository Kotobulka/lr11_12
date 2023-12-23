var
  filetext: text;
  S: string;

begin
  // Ввод строки S
  writeln('Введите строку S:');
  readln(S);

  // Открытие файла для добавления строки в конец
  assign(filetext, 'yourfile.txt');
  append(filetext);

  // Запись строки S в конец файла
  writeln(filetext, S);

  // Закрытие файла после записи
  close(filetext);
end.

//assign(filetext, 'yourfile.txt'); устанавливает файловый поток для файла с именем "yourfile.txt".
//append(filetext); открывает файл для добавления данных в конец (если файл не существует, он будет создан).
//writeln(filetext, S); записывает строку S в конец файла.
//close(filetext); закрывает файл после записи.