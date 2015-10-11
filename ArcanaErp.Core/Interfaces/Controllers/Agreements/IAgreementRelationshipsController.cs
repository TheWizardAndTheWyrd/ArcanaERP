using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace ArcanaErp.Core.Interfaces.Controllers.Agreements
{
    public interface IAgreementRelationshipsController<T1, T2, T3, in T4, out T5>
    {
        IQueryable<T1> GetAgreementRelationships();
        Task<T2> GetAgreementRelationship(int id);
        Task<T2> PutAgreementRelationship(int id, T1 agreementRelationship);
        Task<T2> PostAgreementRelationship(T1 agreementRelationship);
        Task<T2> DeleteAgreementRelationship(int id);
        bool AgreementRelationshipExists(int id);
        Task<T3> ExecuteAsync(T4 controllerContext, CancellationToken cancellationToken);
        T5 Db { get; }
    }
}