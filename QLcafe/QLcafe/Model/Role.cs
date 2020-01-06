using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLcafe.Model
{
    public class Role
    {
        public int Id { get; set; }
        public string DisplayName { get; set; }
        public ICollection<User> Users { get; set; }
    }
}
