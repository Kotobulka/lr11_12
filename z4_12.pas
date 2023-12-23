var
  inputFile, tempFile: text;
  K, currentLineNumber, count: integer;
  line: string;

begin
  // Ввод номера строки K
  writeln('Введите номер строки K:');
  readln(K);

  // Открытие исходного файла для чтения
  assign(inputFile, 'C:\lr12\inputz4.txt');
  reset(inputFile);

  // Создание временного файла для записи
  assign(tempFile, 'C:\lr12\tempz4.txt');
  rewrite(tempFile);

  // Копирование строк до строки с номером K
  currentLineNumber := 0;
  while not eof(inputFile) and (currentLineNumber < K) do
  begin
    readln(inputFile, line);
    writeln(tempFile, line);
    currentLineNumber := currentLineNumber + 1;
  end;

  // Вставка пустой строки перед строкой с номером K
  if currentLineNumber = K then
    writeln(tempFile, '');

  // Копирование оставшихся строк
  while not eof(inputFile) do
  begin
    readln(inputFile, line);
    writeln(tempFile, line);
  end;

  // Закрытие файлов
  close(inputFile);
  close(tempFile);

end.