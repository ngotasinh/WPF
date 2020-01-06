﻿using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace WpfApplication1
{
	/// <summary>
	/// Interaction logic for MainWindow.xaml
	/// </summary>
	public partial class MainWindow : Window
	{
		public MainWindow()
		{
			this.InitializeComponent();

			// Insert code required on object creation below this point.

		    var list = new List<Per>()
		    {
		        new Per() {Name = "Phạm Tuân",Title = "Quán quân" ,Address = "Phước Long B, Q9", YearOld = 21},
                new Per() {Name = "Phạm Văn Chu", Title = "Á quân",Address = "Phước Long A, Q9", YearOld = 22}
		    };

		    listBox.ItemsSource = list;
            listBox2.ItemsSource = list;
		}
	}
}