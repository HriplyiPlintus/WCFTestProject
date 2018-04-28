using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Domain;
using System.Data.Common;

namespace DataAccess {
    public static class CompanyHelper {
        public static Company Map(DbDataReader record) {
            return new Company {
                Name = record["company_name"].ToString(),
                Description = record["description"].ToString()
            };
        }
    }
}
