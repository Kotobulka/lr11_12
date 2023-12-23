var
  inputFile, outputFile: text;
  number, minNumber, maxNumber: integer;
  isFirstNumber: boolean;

begin
  // Открытие исходного файла для чтения
  assign(inputFile, 'C:\lr12\input.txt');
  reset(inputFile);

  // Инициализация переменных
  isFirstNumber := true;
  minNumber := 0;
  maxNumber := 0;

  // Поиск минимального и максимального числа
  while not eof(inputFile) do
  begin
    readln(inputFile, number);

    if isFirstNumber then
    begin
      minNumber := number;
      maxNumber := number;
      isFirstNumber := false;
    end
    else
    begin
      if number < minNumber then
        minNumber := number;

      if number > maxNumber then
        maxNumber := number;
    end;
  end;

  // Закрытие исходного файла
  close(inputFile);

  // Открытие файла для записи результатов
  assign(outputFile, 'C:\lr12\output.txt');
  rewrite(outputFile);

  // Запись минимального и максимального числа в файл
  writeln(outputFile, 'Минимальное число: ', minNumber);
  writeln(outputFile, 'Максимальное число: ', maxNumber);

  // Закрытие файла с результатами
  close(outputFile);
end.