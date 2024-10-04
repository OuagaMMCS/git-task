begin
  var Year := ReadInteger('Введите год:');
  Assert(Year > 0);
  var IsV := False;
  if ((Year mod 4 = 0) and (Year mod 100 <> 0)) or (Year mod 400 = 0) then
    IsV := True;
  Println($'Год високосный: {IsV}');
  if IsV then
    Println('В году 366 дней')
  else
    Println('В году 365 дней');
  var (day1, mon1) := ReadInteger2('Введите первый день и месяц:');
  var (day2, mon2) := ReadInteger2('Введите второй день и месяц:');
  Assert((day1 in 1..31) and (day2 in 1..31));
  Assert((mon1 in 1..12) and (mon2 in 1..12));
  if mon2 > mon1 then
    Print('2 дата ближе')
  else if mon2 = mon1 then
  begin
    if day2 > day1 then
      Print('2 дата ближе')
    else
      Print('1 дата ближе');
  end
  else
    Print('1 дата ближе');
end.