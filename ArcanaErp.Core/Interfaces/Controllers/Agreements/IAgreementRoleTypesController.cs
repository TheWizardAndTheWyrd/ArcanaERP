using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace ArcanaErp.Core.Interfaces.Controllers.Agreements
{
    public interface IAgreementRoleTypesController<T1, T2, T3, in T4, out T5>
    {
        IQueryable<T1> GetAgreementRoleTypes();
        Task<T2> GetAgreementRoleType(int id);
        Task<T2> PutAgreementRoleType(int id, T1 agreementRoleType);
        Task<T2> PostAgreementRoleType(T1 agreementRoleType);
        Task<T2> DeleteAgreementRoleType(int id);
        bool AgreementRoleTypeExists(int id);
        Task<T3> ExecuteAsync(T4 controllerContext, CancellationToken cancellationToken);
        T5 Db { get; }
    }
}