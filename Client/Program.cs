using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Client {
    class Program {
        static void Main(string[] args) {
            var repo = new Repo.RepositoryClient("BasicHttpBinding_IRepository");
            //var f = repo.GetByKey("Exxon Mobil Corporation");
            var key = Console.ReadLine();
            var f = repo.GetByKey(key);

            Console.WriteLine(f.Description);
        }
    }
}
