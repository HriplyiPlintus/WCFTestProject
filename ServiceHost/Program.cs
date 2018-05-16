using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.ServiceModel;
using Repository;

namespace RepositoryService {
    class Program {
        static void Main(string[] args) {
            using (var service = new ServiceHost(typeof(CompanyRepository))) {
                service.Open();

                Console.WriteLine($"Service is running.\nPress any key to stop the service..");
                Console.ReadKey();
            }
        }
    }
}
