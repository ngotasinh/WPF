   M S B A M L   `   `   `  ����  
Validation    Validation.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  
MainWindow��5   	   $	��250��6   $	��525��6)    � 	Resources 5         TextBox.Static.Border �� Color  TextBox.MouseOver.Border  TextBox.Focus.Border  TxtStyleValidation �� 
TargetType �� Property �� Value-  'System.Windows.Input.KeyboardNavigation �� 
TargetType ��Name J� SnapsToDevicePixels	 � ColumnDefinitions
 �Name ��Name
 � Tag ��Name �� Triggers P� Property P� Value �� 
TargetName �� Self �� RelativeSource �� Path �� Triggers ]� 
Conditions �� Property �� Value��%q  &	        &	 #     &	 F     &	 i     7   7  7  �� 5   
   $ 	#FFABAdB3��68   �� 5   
   $ 	#FF7EB4EA��6;   �� 5   
   $ 	#FF569DE5��67   �� 5	   
   " ��6+   .�5
      ��  � ��# � ��6+   �� 5       � ��8   6,   �� 5       � ��# � ��6+   �� 5       � ��$ 1q�60   �� 5       �@ TabNavigation$
 None=�6A   �� 5       � ��$
 Left=�6;   �� 5       �@�FocusVisualStyle 61   Z� �� 5       �@J�	AllowDrop . 6*   �� 5       �@��PanningMode$ VerticalFirst=�69   �� 5       �@��IsFlicksEnabled .  67   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $ border��6!   #��z��61   #��z��6]   #��z��6�    . ._�5      � 	 5   "   �� 5   &   $
��Auto �67   �� 5   &   $��* �67   .+�5   "   � $
 	grdHeader��66   $	��100��6'   #��z��6I   .+�5   &   �� $ lbHeader��6,   #��z 6>   $��5,0,5,2q�6^   $��Center=�6p   
�������6�   5   #   �� 5    "   $ PART_ContentHost��6/   |�.  $��Hidden=�6[   $��Hidden=�6�   $��1��6�   $��Center=�6�   $��5,2,2,1q�6�   5"      5#       5$      P� 5%       �@J�IsMouseOver . . �5&   "   �� $ border��6@   8   � ��6T   5'      P� 5(       �@J�IsKeyboardFocused . . �5)   "   �� $ border��6@   8   � ��6T   5*      P� 5+       �@=�HasError . . �5,   "   ��  5-   %   �� # Z $) #(Validation.Errors)[0].ErrorContent� �@�ToolTip�� 5/   "   $ 	grdHeader��6?    � ��
 �  ��6V   �� 50   "   $ border��6@    � ��
 �  ��6T   51      53      55       56      ]� 57       58      �� 59      + �@��#IsInactiveSelectionHighlightEnabled . 6S   �� 5:       �@��IsSelectionActive .  6A   ./�5<      ��  �@��SelectionBrush# � /�67   5=      5?      5@      .��5A      �� -   5         ��Name$ Stack��5A      $��10q�6    .+�5B   
   �� -   5         ��Name$ txtName��5B      $��23��6#    �� TextWrapping$
 Wrap=�6/   $ My Name��5C   h   $	��Top=�5D      $��5,1,2,1q�6*   #���  6<   ���	#FF0630AE$��0,3,0,0q�5E   *   ��5C      �� *Name+ �� UpdateSourceTrigger$ PropertyChanged=� �� ValidatesOnDataErrors . 5E   *   �� 5F   
   -   5        $ txtYear��5F      $��23��6#   $
 Wrap=�6/   $ Year-Old��5G   d   $	��Top=�5H   
   $��5,1,2,1q�6"   #���  64   ���	#FF0630AE$��0,3,0,0q�5I   "   ��5G   
   �� *	YearOld+$ PropertyChanged=� . 5I   "   5J      5K      