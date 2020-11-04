declare
  tempVar char(20);
  tempVar2 char(20);
  Cursor testC is
  select pFNAME, pLNAME
  from player;
  
begin
   open testC;
   loop
     fetch testC into tempVar, tempVar2;
     dbms_output.put_line(tempVar || ' ' || tempVar2);
     exit when testC%rowcount = 200;
     end loop;
   close testC;
   
end;
