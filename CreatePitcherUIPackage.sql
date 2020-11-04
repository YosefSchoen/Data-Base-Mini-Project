Create Or Replace Package PitcherUI As

       Type R_Rec is Record(P_PID Pitcher.Pid%Type,
                 P_TID Pitcher.Tid%Type,
                 P_SO Pitcher.Strikeouts%Type,
                 P_WHIP Pitcher.Whip%Type,
                 P_ERA Pitcher.Era%Type,
                 P_Saves Pitcher.Saves%Type);
          
       Type R_tab Is Table Of R_Rec;
       
       --Update Pitcher
       Procedure UpdatePitcher(
                 P_PID Pitcher.Pid%Type,
                 P_TID Pitcher.Tid%Type,
                 P_SO Pitcher.Strikeouts%Type,
                 P_WHIP Pitcher.Whip%Type,
                 P_ERA Pitcher.Era%Type,
                 P_Saves Pitcher.Saves%Type);
                 
                 
       --Insert Pitcher
       Procedure InsertPitcher(
                 P_PID Pitcher.Pid%Type,
                 P_TID Pitcher.Tid%Type,
                 P_SO Pitcher.Strikeouts%Type,
                 P_WHIP Pitcher.Whip%Type,
                 P_ERA Pitcher.Era%Type,
                 P_Saves Pitcher.Saves%Type);
                 
                 
       --Delete Pitcher
       Procedure DeletePitcher(P_PID Pitcher.Pid%Type);
       
       
       --Find Pitcher
       Function FindPitcher(P_PID Pitcher.Pid%Type)
                Return R_tab;
End PitcherUI;
