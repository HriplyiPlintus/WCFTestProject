using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Repository;

namespace Test {
    class Program {
        static void Main(string[] args) {
            var repo = new CompanyRepository();
            var f = repo.GetByKey("Exxon Mobil Corporation");
            Console.WriteLine(f.Description);
        }
    }
}
