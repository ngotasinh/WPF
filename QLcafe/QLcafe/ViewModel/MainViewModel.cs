using QLcafe.Model;
using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace QLcafe.ViewModel
{
    public class MainViewModel : BaseViewModel
    {
        private ObservableCollection<TableFood> _TableFoodList;
        public ObservableCollection<TableFood> TableFoodList { get => _TableFoodList; set { _TableFoodList = value; OnPropertyChanged(); } }
        public bool Isloaded = false;
        public ICommand LoadedWindowCommand { get; set; }

        public MainViewModel()
        {
            LoadedWindowCommand = new RelayCommand<Window>((p) => { return true; }, (p) => {
                Isloaded = true;
                if (p == null)
                    return;

                p.Hide();  // ẩn đi mainWindow
                LoginWindow loginWindow = new LoginWindow();
                loginWindow.ShowDialog();
                if (loginWindow.DataContext == null)
                    return;
                var loginVM = loginWindow.DataContext as LoginViewModel;
                if (loginVM.IsLogin)
                {
                    p.Show();
                    //LoadTableFood();
                }
                else
                {
                    p.Close();
                }
            });
        }
        public ObservableCollection<TableFood> Table()
        {
            TableFoodList = new ObservableCollection<TableFood>();
            var tableFoodList = DataProvider.Ins.DB.TableFoods;
            foreach (var item in tableFoodList)
            {
                TableFood tableFood = new TableFood()
                {
                    Id = item.Id,
                    Name = item.Name,
                    Status = item.Status
                };
                TableFoodList.Add(tableFood);
            }
            return TableFoodList;
        }
    }
}
