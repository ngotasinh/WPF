using MaterialDesignThemes.Wpf;
using QLcafe.Model;
using QLcafe.ViewModel;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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

namespace QLcafe
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            var menuRegister = new List<SubItem>();
            menuRegister.Add(new SubItem("Trống"));
            menuRegister.Add(new SubItem("Có khách"));
            var item6 = new ItemMenu("Bàn", menuRegister, PackIconKind.Table);

            var menuSchedule = new List<SubItem>();
            menuSchedule.Add(new SubItem("Đã thanh toán"));
            menuSchedule.Add(new SubItem("Chưa thanh toán"));
            var item1 = new ItemMenu("Hóa Đơn", menuSchedule, PackIconKind.ClipboardTextOutline);

            var menuReports = new List<SubItem>();
            menuReports.Add(new SubItem("Đồ uống"));
            menuReports.Add(new SubItem("Thức ăn nhanh"));
            var item2 = new ItemMenu("Sản phẩm", menuReports, PackIconKind.CoffeeToGo);

            var menuExpenses = new List<SubItem>();
            menuExpenses.Add(new SubItem("Fixed"));
            menuExpenses.Add(new SubItem("Variable"));
            var item3 = new ItemMenu("Thể loại", menuExpenses, PackIconKind.ShoppingBasket);

            var menuFinancial = new List<SubItem>();
            menuFinancial.Add(new SubItem("Cash flow"));
            var item4 = new ItemMenu("Financial", menuFinancial, PackIconKind.ScaleBalance);

            var item0 = new ItemMenu("Trang chủ", new UserControl(), PackIconKind.HomeAccount);

            Menu.Children.Add(new UserControlMenuItem(item0));
            Menu.Children.Add(new UserControlMenuItem(item6));
            Menu.Children.Add(new UserControlMenuItem(item1));
            Menu.Children.Add(new UserControlMenuItem(item2));
            Menu.Children.Add(new UserControlMenuItem(item3));
            Menu.Children.Add(new UserControlMenuItem(item4));
            LoadTable();

        }

        private void ButtonOpenMenu_Click(object sender, RoutedEventArgs e)
        {
            ButtonCloseMenu.Visibility = Visibility.Visible;
            ButtonOpenMenu.Visibility = Visibility.Collapsed;
        }
       
        private void ButtonCloseMenu_Click(object sender, RoutedEventArgs e)
        {
            ButtonCloseMenu.Visibility = Visibility.Collapsed;
            ButtonOpenMenu.Visibility = Visibility.Visible;
        }  
        void LoadTable()
        {
            var listTable= DataProvider.Ins.DB.TableFoods;
            foreach (var item in listTable)
            {
                Button btn = new Button();
                btn.Width = 100;
                btn.Height = 100;
                btn.Margin = new Thickness(10);

                btn.Content = item.Name + Environment.NewLine+ item.Status;

                Table.Children.Add(btn);
            }
        }
    }
}
