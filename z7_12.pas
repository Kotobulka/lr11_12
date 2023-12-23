var
  inputFile, outputFile: text;
  n, i, divisorCount, sum: integer;

// Функция для подсчета количества делителей числа
function CountDivisors(num: integer): integer;
var
  count, d: integer;
begin
  count := 0;
  for d := 1 to num do
    if num mod d = 0 then
      count := count + 1;

  Result := count;
end;

begin
  // Открытие входного файла для чтения
  assign(inputFile, 'C:\lr12\z3.in.txt');
  reset(inputFile);

  // Открытие выходного файла для записи
  assign(outputFile, 'C:\lr12\z3.out.txt');
  rewrite(outputFile);

  // Чтение значения n из файла
  readln(inputFile, n);

  // Инициализация суммы
  sum := 0;

  // Подсчет суммы чисел с ровно 5 делителями
  for i := 1 to n do
  begin
    divisorCount := CountDivisors(i);

    if divisorCount = 5 then
      sum := sum + i;
  end;

  // Запись результата в выходной файл
  writeln(outputFile, sum);

  // Закрытие файлов
  close(inputFile);
  close(outputFile);
end.