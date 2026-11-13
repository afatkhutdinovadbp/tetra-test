program QuadraticEquation;

var
  a, b, c, d, x1, x2: Real;

begin
  Write('Введите a, b, c: ');
  ReadLn(a, b, c);

  if a = 0 then
  begin
    if b = 0 then
    begin
      if c = 0 then
        WriteLn('Бесконечно много решений')
      else
        WriteLn('Решений нет');
    end
    else
      WriteLn('Линейное уравнение, x = ', -c / b:0:4);
  end
  else
  begin
    d := b * b - 4 * a * c;
    if d > 0 then
    begin
      x1 := (-b + Sqrt(d)) / (2 * a);
      x2 := (-b - Sqrt(d)) / (2 * a);
      WriteLn('Два корня:');
      WriteLn('x1 = ', x1:0:4);
      WriteLn('x2 = ', x2:0:4);
    end
    else if d = 0 then
    begin
      x1 := -b / (2 * a);
      WriteLn('Один корень: x = ', x1:0:4);
    end
    else
      WriteLn('Действительных корней нет (D = ', d:0:4, ')');
  end;
end.
