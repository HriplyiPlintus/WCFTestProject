using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Configuration;
using DataAccess;
using Domain;

namespace Test {
    class Program {
        public static string connString = ConfigurationManager.ConnectionStrings["OracleConnectionString"].ConnectionString;

        static void Main(string[] args) {
            DeleteCompany();
        }

        public static void GetCompany() {
            var company = CreateRepository().GetByKey("Exxon Mobil Corporation");
            Console.WriteLine(company.Description);
        }

        public static void GetCompanies() {
            var companies = CreateRepository().GetAll();
            foreach (var c in companies) {
                Console.WriteLine($"Name: {c.Name}; Description: {c.Description}");
            }
        }

        public static void DeleteCompany() {
            var company = new Company() { Name = "new company", Description = "this is a brand new company" };
            var repo = CreateRepository();
            //repo.Create(company);
            var c = repo.GetByKey(company.Name); //проверить, что добавилась корректно
            Console.WriteLine($"Company deleted\nName: {c.Name}; Description: {c.Description}");

            repo.RemoveByKey(c.Name);
        }

        public static void CreateCompany() {
            var company = new Company() { Name = "new company", Description = "this is a brand new company" };
            var repo = CreateRepository();
            repo.Create(company);
            var c = repo.GetByKey(company.Name); //проверить, что добавилась корректно
            Console.WriteLine($"Company created\nName: {c.Name}; Description: {c.Description}");

        }

        static CompanyRepository CreateRepository() => new CompanyRepository(connString);
    }
}
