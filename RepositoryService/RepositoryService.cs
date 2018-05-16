using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Domain;
using ServiceInterface;
using System.Configuration;
using Repository;

namespace RepositoryService {
    public class Repositoryservice : IRepository {

        private string connString = ConfigurationManager.ConnectionStrings["OracleConnectionString"].ConnectionString;    //connection string

        private CompanyRepository CreateRepository() => new CompanyRepository(connString);   //create new connection

        public void Create(Company company) => CreateRepository().Create(company);

        public IEnumerable<Company> GetAll() => CreateRepository().GetAll();

        public Company GetByKey(string key) => CreateRepository().GetByKey(key);

        public void RemoveByKey(string key) => CreateRepository().RemoveByKey(key);

        public void Update(Company company) => CreateRepository().Update(company);
    }
}
