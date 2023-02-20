uses crt;

Const MaxQ = 101;

Function Empty(tail, head:integer): Boolean;
begin
  empty:= tail = head;
  end;
procedure proverka(tail, head:integer);
begin
  if tail = head then
    println('Пустой')
  else
    println('Не пустой');
end;

Procedure Remove(Q: array of string; head, tail:integer);
begin
  var I: string;
  If Not Empty(tail, head) then begin
    I:=Q[head];
    Inc(head);
  end
  else
    println('Список пустой');
end;

Procedure Insert(Q: array of string; tail, head:integer);
begin
  var i:string;
  If Empty(tail, head) then 
  tail:=1;
  readln(i);
  Inc(tail);
  Q[tail]:=I;
end;

begin
  var q:array of string;
  SetLength(q, maxq);
  var x:integer;
  var tail:=1;
  var head:=1;
  repeat
   println('Выберите действие: 1 - Считывание первого элемета очереди; 2 - Вставка элемента в конец очереди; 3 - Проверка, является ли очередь пустой; 0 - Выход');
    readln(x);
    case x of
      1:Remove(Q, head, tail);
      2:Insert(Q, tail, head);
      3:proverka(tail, head);
    end;
  until x=0;
end.

