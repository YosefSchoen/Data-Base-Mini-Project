Create Or Replace Package PlayerUI As
       --Update Player
       Procedure UpdatePlayer(P_PID Player.Pid%Type,
                 P_fName Player.Pfname%Type,
                 P_lName Player.Plname%Type, 
                 P_Weight Player.Weight%Type, 
                 P_Height Player.Height%Type, 
                 P_Age Player.Age%Type, 
                 P_TID Player.Tid%Type);
                 
       --Insert Player
       Procedure InsertPlayer(P_PID Player.Pid%Type,
                 P_fName Player.Pfname%Type, 
                 P_lName Player.Plname%Type, 
                 P_Weight Player.Weight%Type, 
                 P_Height Player.Height%Type, 
                 P_Age Player.Age%Type, 
                 P_TID Player.Tid%Type);
                 
       --Delete Player
       Procedure DeletePlayer(P_PID Player.Pid%Type);
       
       --Find Player
       Procedure FindPlayer(P_PID Player.Pid%Type);
End PlayerUI;
