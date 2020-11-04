Create Or Replace Package Body PlayerUI As
       --Update Player
       Procedure UpdatePlayer(P_PID Player.Pid%Type,
                 P_fName Player.Pfname%Type, 
                 P_lName Player.Plname%Type, 
                 P_Weight Player.Weight%Type, 
                 P_Height Player.Height%Type, 
                 P_Age Player.Age%Type, 
                 P_TID Player.Tid%Type
                 )         
       Is
       Begin
                 Update Player
                        Set Pfname = P_fName
                        Where Player.Pid = P_PID;
                 Update Player
                        Set Plname = P_lName
                        Where Player.Pid = P_PID;
                 Update Player
                        Set Weight = P_Weight
                        Where Player.Pid = P_PID;
                 Update Player
                        Set Height = P_Height
                        Where Player.Pid = P_PID;
                 Update Player
                        Set Age = P_Age
                        Where Player.Pid = P_PID;
                 Update Player
                        Set Tid = P_TID  
                        Where Player.Pid = P_PID;
       End UpdatePlayer;
       
       
       --Insert Player
       Procedure InsertPlayer(P_PID Player.Pid%Type,
                 P_fName Player.Pfname%Type, 
                 P_lName Player.Plname%Type, 
                 P_Weight Player.Weight%Type, 
                 P_Height Player.Height%Type, 
                 P_Age Player.Age%Type, 
                 P_TID Player.Tid%Type)
       Is
       Begin
                 insert into Player(Pid, Pfname, Plname, Weight, Height, Age, Tid)
                 values(P_PID, P_fName, P_lName, P_Weight, P_Height, P_Age, P_TID);
       End InsertPlayer;
       
       
       --Delete Player
        Procedure DeletePlayer(P_PID Player.Pid%Type)
       Is
       Begin
                 delete from Player
                 where Player.Pid = P_PID;
       End DeletePlayer;
       
       
       --Find Player
       Procedure FindPlayer(P_PID Player.Pid%Type)
       Is
                 P_PIDNew Player.Pid%Type := 'temp';
                 P_fName Player.Pfname%Type;
                 P_lName Player.Plname%Type;
                 P_Weight Player.Weight%Type; 
                 P_Height Player.Height%Type; 
                 P_Age Player.Age%Type;
                 P_TID Player.Tid%Type;
       Begin
                 select Player.Pid,
                        Player.Pfname,
                        Player.Plname,
                        Player.Weight,
                        Player.Height,
                        Player.Age,
                        Player.Tid
                 Into P_PIDNew,
                      P_fName,
                      P_lName,
                      P_Weight, 
                      P_Height,
                      P_Age,
                      P_TID
                 from Player
                 where Pid = P_PID;
                 
                 dbms_output.put_line(P_PIDNew ||P_fName || P_lName || P_Weight || P_Height || P_Age || P_TID);
       End FindPlayer;
       
End PlayerUI;
