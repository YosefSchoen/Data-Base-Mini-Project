   M S B A M L   `   `   `  ����F  BFrontEndWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:FrontEndWPFFrontEndWPF  5   	       FrontEndWPF.Batter   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:FrontEndWPF     5   	   -   5          � Title$  Batter��5	   	   $	��450��6   $	��800��6%   .��5
      �  � ColumnDefinitions 5   
   �� 5      $	��500 �6   �� 5      $��* �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $	��300 �6   �� 5      $��* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ BatterDataGrid��5      $��0��5      $��0��5      $
��Left=�5      $
��auto��5      $	��Top=�5      $
��auto��5      �� 5   
    �� Orientation$ 
Horizontal=�6   $��1��5      $��0��5      $
��Left=�5      $
��auto��5       $	��Top=�5!      $
��auto��5"      .+�5$      �� -   5         ��Name$ SearchBatter��5$      $
��Left=�5%      $
��auto��5&       �� TextWrapping$
 Wrap=�5'      $��Enter Team ID��5(      $	��Top=�5)      $
��auto��5*      $��
0, 0, 5, 0q�5+      �� 5-      -   5         ��Name$ searchButton��5-      $��search��5.      $
��Left=�5/      $	��Top=�50      $
��auto��51      52      53      �� 55   
   -   5        $ 
backButton��55      $��2��56      $��0��6!   $
��back��57      $
��Left=�58      $	��Top=�6,   $
��auto��59      6   ��5;   
   �� 5<       �� ImageSource$Z TC:\Users\josep\source\repos\Database Mini Project\FrontEndWPF\baseballBackground.jpg��6   	 j� Stretch$	 UniformToFill=�6|   5>      5?      