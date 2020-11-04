Create Or Replace Package Body PitcherUI as
       Procedure UpdatePitcher(
                 P_PID Pitcher.Pid%Type,
                 P_TID Pitcher.Tid%Type,
                 P_SO Pitcher.Strikeouts%Type,
                 P_WHIP Pitcher.Whip%Type,
                 P_ERA Pitcher.Era%Type,
                 P_Saves Pitcher.Saves%Type
                 )
       Is
       Begin
                Update Pitcher
                        Set TID = P_TID
                        Where Pitcher.Pid = P_PID;
                
                Update Pitcher
                        Set Strikeouts = P_SO
                        Where Pitcher.Pid = P_PID;
                        
                Update Pitcher        
                        Set Whip = P_WHIP
                        Where Pitcher.Pid = P_PID;
                        
                Update Pitcher        
                        Set Era = P_ERA
                        Where Pitcher.Pid = P_PID;
                        
                Update Pitcher
                        Set Saves = P_Saves
                        Where Pitcher.Pid = P_PID;
                        
                Update Pitcher     
                        Set TID = P_TID
                        Where Pitcher.Pid = P_PID;
                        
       End UpdatePitcher; 
       
       
       Procedure InsertPitcher(
                 P_PID Pitcher.Pid%Type,
                 P_TID Pitcher.Tid%Type,
                 P_SO Pitcher.Strikeouts%Type,
                 P_WHIP Pitcher.Whip%Type,
                 P_ERA Pitcher.Era%Type,
                 P_Saves Pitcher.Saves%Type
                 )
       Is
       Begin
                 insert into Pitcher(Pid, Tid, Strikeouts, Whip, Era, Saves)
                 values(P_PID, P_TID, P_SO, P_WHIP, P_ERA, P_Saves);
       End InsertPitcher;
       
       
       Procedure DeletePitcher(P_PID Pitcher.Pid%Type)
       Is
       Begin
                 delete from Pitcher
                 where Pitcher.Pid = P_PID;
       End DeletePitcher;
       
       Function FindPitcher(P_PID Pitcher.Pid%Type)
                Return R_Tab
                
       Is
                Pitcher_Rec R_Rec;
                Pitcher_Tab R_Tab;
                
                Cursor foundPitchers is
                        Select Pid, Tid, Strikeouts, Whip, Era, Saves
                        from Pitcher
                        where pid = P_PID;
                 
                  
                 
       Begin
                 Open foundPitchers;
                 
                 Loop
                      Fetch foundPitchers
                      Into Pitcher_Rec;
                      Exit When foundPitchers%Notfound;
                      Insert Into Pitcher_Tab
                      Values Pitcher_Rec;
                 End Loop;
                 
                 Close foundPitchers;
      Return Pitcher_Tab;
      End FindPitcher;     
End PitcherUI;
