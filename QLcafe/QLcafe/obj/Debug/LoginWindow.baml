   M S B A M L   `   `   `  ����A  =QLcafe, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:QLcafeQLcafe  5   	   9!clr-namespace:QLcafe.UserControlsQLcafe.UserControls  5   	       QLcafe.LoginWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:QLcafe     5   	   0uc!clr-namespace:QLcafe.UserControls     5   	   c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	   	   S OMaterialDesignThemes.Wpf, Version=1.0.1.0, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   -   5        $��loginWindow��5   	      LoginVM  � DataContext#  [  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � WindowStyle$
 None=�5   	   $��Segoe UI Emoji)�5   	    � Title$ Đăng NHập��5   	   $	��500��6   $	��350��6(   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      &    QLcafe.UserControls.ControlBarUC  
 � Tag 6   �� *Title+ �� ElementName$ loginWindow��6O   5      � 5   
   $��1��6   .+�5      �� $	��280��6   $	��Top=�6%   ��5      �� 5       �� EndPoint$ 0.5,1&�6*   	 �� 
StartPoint$	 0.5,0&�6;   .��5      � 
 � Color$
 	#FF2281D1��6'   � 5      $
 	#FF34268A��6'    � Offset$ 1Q�69   � 5       $
 	#FF33288B��6'   $ 0.546Q�69   5!      5#      �� 5%      $	��280��6   $	��240��6$   $��Bottom=�61   $
��0,80q�6L    �� RadiusY$ 10��6Z    �� RadiusX$ 10��6g   
������� J� Effect 5&      3  -System.Windows.Media.Effects.DropShadowEffect  5'         
BlurRadius$ 15Q�6'      	Direction$ 0Q�67      RenderingBias$ Quality=�6E      ShadowDepth$ 1Q�6]      Color$ 	#FFBBBBBB��6m   5)      � 5*      $��Bottom=�6   $��35,80q�6.   $	��240��6=   .+�5+      �� $��Đăng nhập��6   $��Center=�6,   $	��Top=�6I   $��5q�6a   
�������$��18(�6~   �� 5,      $��Center=�6   $��15q�68   .+�5-      �� $
��0,10q�6   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên đăng nhập��6,    % !MaterialDesignFloatingHintTextBox#��[ 6[   $��Champagne & Limousines)�5.      $��18(�5/      ��50      �� *
UserName+G� 52      -   5         G�Name$ FloatingPasswordBox��53   "   $
��0,10q�52   "   $ Mật khẩu��60    ) %MaterialDesignFloatingHintPasswordBox#��[ 6Z   $��Champagne & Limousines)�54   "   $��18(�55   "   .  (System.Windows.Interactivity.Interaction   Triggers 56      /  )System.Windows.Interactivity.EventTrigger  57         	EventName$ PasswordChanged��6-   .  (System.Windows.Interactivity.TriggerBase   Actions. 58   "   6  0System.Windows.Interactivity.InvokeCommandAction     Command 68   �� *PasswordChangedCommand+   CommandParameter 59   $   �� $ FloatingPasswordBox��5:      5<      5=      5>      �� 5?      $	��150��6   $��Center=�6!   $��Bottom=�6>   $
��0,65q�6Y   $��Đăng nhập��6g    �� 	IsDefault . ��5A      �� *LoginCommand+��5B      �� $ loginWindow���� 5C      $��Quên mật khẩu?��6   $��Center=�6.   $��Bottom=�6K   $��30q�6f   
������� � Cursor$
 Hand��6�   �� 5D      $��Images/Logos/home.png��6   $	��100��63   $	��100��6?   $	��Top=�6L   $��30q�6d   5E      5G      5H      