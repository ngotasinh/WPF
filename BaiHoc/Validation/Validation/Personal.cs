using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Validation
{
    class Personal:IDataErrorInfo,INotifyPropertyChanged
    {
        private string _name;
        private int _yearold;

        public int YearOld
        {
            set
            {
                if (value != _yearold)
                {
                    _yearold = value;
                    OnPropertyChanged("YearOld");
                }
            }
            get { return _yearold; }
        }
        public string Name
        {
            set
            {
                value = value.Trim();
                if (value !=_name)
                {
                    _name = value;
                    OnPropertyChanged("Name");
                }
            }
            get { return _name; }
        }

        //IDataErrorInfo
        public string Error
        {
            get { throw new NotImplementedException(); }
        }

        public string this[string columnName]
        {
            get
            {
                string result = String.Empty;
                switch (columnName)
                {
                    case "Name":
                        if (String.IsNullOrEmpty(Name) || Name.Length < 2)
                        {
                            result = "Lỗi nhập liệu: tên không chính xác";
                        }
                        break;
                    case "YearOld":
                        if (YearOld < 18)
                        {
                            result = "Lỗi nhập liệu: Tuổi quá nhỏ";
                        }
                        break;
                }


                return result;
            }
        }

        // INotifyPropertyChanged
        public event PropertyChangedEventHandler PropertyChanged;

        public void OnPropertyChanged(string property)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged.Invoke(this,new PropertyChangedEventArgs(property));
            }
        }
    }
}
