using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace DataBinding
{
    public abstract class ViewModelBase : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        protected void NotifyPropertyChanged([CallerMemberName] String propertyName = "")
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }
    }

    public class Persion : ViewModelBase
    {
        public string Name
        {
            set
            {
                _name = value;
                NotifyPropertyChanged("Name");
            }
            get { return _name; }
        }

        public string Height
        {
            set
            {
                _hieght = value;
                NotifyPropertyChanged("Height");
            }
            get { return _hieght; }
        }

        public string Width
        {
            set
            {
                _width = value;
                NotifyPropertyChanged("Widght");
            }
            get { return _width; }
        }

        private string _name;
        private string _hieght;
        private string _width;
    }
}
