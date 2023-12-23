var
  inputFile, outputFile: text;
  line: string;

begin
  // Открытие исходного файла для чтения
  assign(inputFile, 'C:\lr12\input.txt');
  reset(inputFile);

  // Открытие файла для записи
  assign(outputFile, 'C:\lr12\output.txt');
  rewrite(outputFile);

  // Чтение строк из исходного файла и запись их в новый файл, если они не пустые
  while not eof(inputFile) do
  begin
    readln(inputFile, line);

    // Проверка на пустую строку
    if line <> '' then
      writeln(outputFile, line);
  end;

  // Закрытие файлов
  close(inputFile);
  close(outputFile);
end.