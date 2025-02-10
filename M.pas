unit M;

uses
  GraphABC;

procedure Carpet(x, y, size: integer; depth: integer);//параметризация
begin
  if depth = 0 then //база рекрурсии
  begin
    setbrushcolor(clblack); 
    fillrect(x, y, x + size, y + size);
  end
  else //декомпозиция
  begin
    var newSize := size div 3;
    
    Carpet(x, y, newSize, depth - 1); 
    Carpet(x + newSize, y, newSize, depth - 1); 
    Carpet(x + 2 * newSize, y, newSize, depth - 1); 
    
    Carpet(x, y + newSize, newSize, depth - 1); 
    Carpet(x + 2 * newSize, y + newSize, newSize, depth - 1); 
    
    Carpet(x, y + 2 * newSize, newSize, depth - 1); 
    Carpet(x + newSize, y + 2 * newSize, newSize, depth - 1); 
    Carpet(x + 2 * newSize, y + 2 * newSize, newSize, depth - 1); 
  end;
end;
end.