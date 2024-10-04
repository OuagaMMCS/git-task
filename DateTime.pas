begin
  var Year := ReadInteger('Введите год:');
  Assert(Year > 0);
  var IsV := False;
  if ((Year mod 4 = 0) and (Year mod 100 <> 0)) or (Year mod 400 = 0) then
    IsV := True;
  Print($'Год високосный: {IsV}');
end.