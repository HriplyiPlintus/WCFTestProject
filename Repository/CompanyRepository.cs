using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Oracle.ManagedDataAccess.Client;
using Domain;
using System.Data;
using ServiceInterface;
using System.Configuration;

namespace Repository {
    public class CompanyRepository : IRepository {
        //connection string: "Data Source=demo; id=taxworker; password=091191;"
        private string _connStr;

        public CompanyRepository() {
            _connStr = "Data Source=DEMO;User Id=taxworker;Password=091191;";
            //ConfigurationManager.ConnectionStrings["OracleConnectionString"].ConnectionString; //- почему это говно не работает?
        }

        public Company GetByKey(string key) {
            using (var conn = CreateConnection()) {
                using (var cmd = conn.CreateCommand()) {
                    cmd.CommandText = "select * from company where company_name = :companyName";
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.Add("companyName", OracleDbType.Varchar2).Value = key;

                    conn.Open();

                    var reader = cmd.ExecuteReader();
                    reader.Read();
                    return CompanyHelper.Map(reader);   //return company object
                }
            }
        }

        public IEnumerable<Company> GetAll() {
            using (var conn = CreateConnection()) {
                using (var cmd = conn.CreateCommand()) {
                    cmd.CommandText = "select * from company";
                    cmd.CommandType = CommandType.Text;

                    conn.Open();

                    var result = new List<Company>();

                    var reader = cmd.ExecuteReader();
                    while (reader.Read()) {
                        result.Add(CompanyHelper.Map(reader));
                    }
                    return result;
                }
            }
        }

        public void RemoveByKey(string key) {
            using (var conn = CreateConnection()) {
                using (var cmd = conn.CreateCommand()) {
                    cmd.CommandText = "delete from company where company_name = :name";
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.Add("name", key);

                    conn.Open();

                    var reader = cmd.ExecuteNonQuery();
                }
            }
        }

        public void Create(Company company) {
            using (var conn = CreateConnection()) {
                conn.Open();
                using (var cmd = conn.CreateCommand()) {
                    cmd.CommandText = "insert into company (company_name, description) values (:companyName, :description)";
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.Add("companyName", company.Name);
                    cmd.Parameters.Add("description", company.Description);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public void Update(Company company) {
            using (var conn = CreateConnection()) {
                conn.Open();
                using (var cmd = conn.CreateCommand()) {
                    cmd.CommandText = "update company set description = :description where compnay_name == :companyName";
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.Add("companyName", company.Name);
                    cmd.Parameters.Add("description", company.Description);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        private OracleConnection CreateConnection() => new OracleConnection(_connStr);
    }
}
