uses
  GraphABC, m;

var
  x1, y1, s, d: integer;
  change: char;

begin
  setwindowsize(800, 800);
  x1 := 0;
  y1 := 0;
  s := 800;
  d := 5;
  Carpet(x1, y1, s, d);
  repeat
    readln(change);
    case change of
      '+':
        begin
          s += 50;
          d += 1;
          ClearWindow;
          Carpet(x1, y1, s, d);
        end;
      '-':
        begin
          s -= 50;
          d -= 1;
          ClearWindow;
          Carpet(x1, y1, s, d);
        end;
      '8':
        begin
          y1 -= 50;
          ClearWindow;
          Carpet(x1, y1, s, d);
        end;
      '2':
        begin
          y1 += 50;
          ClearWindow;
          Carpet(x1, y1, s, d);
        end;
      '4':
        begin
          x1 -= 50;
          ClearWindow;
          Carpet(x1, y1, s, d);
        end;
      '6':
        begin
          x1 += 50;
          ClearWindow;
          Carpet(x1, y1, s, d);
        end;
    end;
  until change = '0';
end.