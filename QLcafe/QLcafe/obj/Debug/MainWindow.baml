   M S B A M L   `   `   `  ����A  =QLcafe, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:QLcafeQLcafe  5   	   9!clr-namespace:QLcafe.UserControlsQLcafe.UserControls  5   	       QLcafe.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:QLcafe     5   	   0uc!clr-namespace:QLcafe.UserControls     5   	   c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	   	   S OMaterialDesignThemes.Wpf, Version=1.0.1.0, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   -   5        $��
mainWindow��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    
 MainVM � DataContext# [ 5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$" Phần mềm quản lý Cafe��5   	   $	��600��6'   $
��1080��64   .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase	   Actions.	 5      6  0System.Windows.Interactivity.InvokeCommandAction  
   Command
 6$   �� *LoadedWindowCommand+   CommandParameter 6L   ��  �� ElementName$ 
mainWindow��5       � 	Resources 5        OpenMenu �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value  	CloseMenu��%�  &	       &	 �     �� 5   
   .��5       U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5!        $ 0��6'   $ 70Q�63     5"      $ 0:0:0.5��6'   $	 200Q�69   5#      5$      �� 5%   
   .��5&      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5'        $ 0��6'   $	 200Q�63     5(      $ 0:0:0.5��6'   $ 70Q�69   5)      5*      5+       � Triggers 5,      :� 5-   
    :� RoutedEvent$ ButtonBase.Click��6    :� 
SourceName$ ButtonOpenMenu��66   .[�5.      �� #��[ 6   5/      :� 50   
   $ ButtonBase.Click��6   $ ButtonCloseMenu��66   .[�51      �� #��[ 6   52      .��55      �  � RowDefinitions 56   
   �� 57      $
��auto �6   6,   �� 58      6   .+�5:   
   � $��0��6   .+�5;      &    QLcafe.UserControls.ControlBarUC  
 � Tag 6   �� *Title+$ 
mainWindow��6N   5<      � 5>   
   $��1��6    � ColumnDefinitions 5?      �� 5@      $	��200 �6#   61   �� 5A      6%   .+�5C      � $��0��6   .+�5D      � -   5         �Name$ GridMenu��5D      $��70��6)   $
��Left=�64   
����  � J� Effect 5E      3  -System.Windows.Media.Effects.DropShadowEffect  5F         
BlurRadius$ 2Q�6+      ShadowDepth$ 1Q�6:      Color$
 Blue��6J   .+�5H      �� .+�5I      � $��50��6   
����  � J� RenderTransformOrigin$ 0.5,0.5&�6=   z�5K      V� 5L   "   .~�5M   &   �� �� 5N   &   �� 5O   &   T� 5P   &   5Q   #   .+�5S      �� -   5         ��Name$ ButtonOpenMenu��5S   %   $��48��6=   $��50��6I   $��	10,2,10,0q�6T   $��Center=�6g   $	��Top=�6�   
����  �
���������6�   Z� .��5T   "   '	  !MaterialDesignThemes.Wpf.PackIcon	   	  Kind$
 Menu=�6:   $��30��6F   $��30��6Q   $��Center=�5U   :   5V      �� 5W      -   5        $ ButtonCloseMenu��5W   %   $y�	Collapsed=�6>   $��50��6U   $��50��6a   $��2q�6l   $��Right=�6w   $	��Top=�6�    0 ,MaterialDesignFloatingActionMiniAccentButton#��[ 6�   
���������6�   Z� ��6  Z� .��5X   "   	  $ 	ArrowLeft=�6:   $��25��6K   $��25��6V   5Y      5Z      � 5[      $��Stretch=�6   
����  �.+�5\      �� $��Stretch=�6+   $��Disabled=�6I   $
��Auto=�6r   $��1��6�   $��2��6�   .��5]   "   �� -   5          ��Name$
  Menu��5]   -   $��10q�6;   5^      5_      5`      5a      5c      � 5d      $��1��6   .+�5e      � -   5        ! �Name$! Table��5e      " � Orientation$" 
Horizontal=�6+   5g      5h      5i      5j      5k      