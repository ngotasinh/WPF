using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace DataBinding
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            stpPer.DataContext = new Persion(){Height = "1m7",Name = "TuanPham",Width = "100,70,90"};
        }

        private void BtnChange_OnClick(object sender, RoutedEventArgs e)
        {
            (stpPer.DataContext as Persion).Name = txtChange.Text;
        }

        private void BtnShow_OnClick(object sender, RoutedEventArgs e)
        {
            MessageBox.Show((stpPer.DataContext as Persion).Name);
        }
    }
}
