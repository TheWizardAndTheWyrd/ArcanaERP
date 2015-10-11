using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace ArcanaErp.Core.Interfaces.Controllers.Agreements
{
    public interface IAgreementRelationshipTypesController<T1, T2, T3, in T4, out T5>
    {
        IQueryable<T1> GetAgreementRelationshipTypes();
        Task<T2> GetAgreementRelationshipType(int id);
        Task<T2> PutAgreementRelationshipType(int id, T1 agreementRelationshipType);
        Task<T2> PostAgreementRelationshipType(T1 agreementRelationshipType);
        Task<T2> DeleteAgreementRelationshipType(int id);
        bool AgreementRelationshipTypeExists(int id);
        Task<T3> ExecuteAsync(T4 controllerContext, CancellationToken cancellationToken);
        T5 Db { get; }
    }
}