using Hangfire.Annotations;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace RadioButtonGroup
{
    public enum StylesChecking
    {
        Is,
        NotIs,
        Container
    }
    public class Model : INotifyPropertyChanged
    {
        StylesChecking _currentOption;
        public StylesChecking CurrentOption
        {
            get { return _currentOption; }
            internal set
            {
                this._currentOption = value;
                OnPropertyChanged(); //Xem thêm về Databinding
            }
        }
        #region Event

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        #endregion
    }

}
