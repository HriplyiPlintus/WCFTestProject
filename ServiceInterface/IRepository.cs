using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Domain;
using System.ServiceModel;

namespace ServiceInterface {
    [ServiceContract]
    public interface IRepository {
        [OperationContract]
        Company GetByKey(string key);
        [OperationContract]
        IEnumerable<Company> GetAll();
        [OperationContract]
        void RemoveByKey(string key);
        [OperationContract]
        void Create(Company company);
        [OperationContract]
        void Update(Company company);
    }
}
