using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace ArcanaErp.Core.Interfaces.Controllers.Agreements
{
    public interface IAgreementPartyRolesController<T1, T2, T3, in T4, out T5>
    {
        IQueryable<T1> GetAgreementPartyRoles();
        Task<T2> GetAgreementPartyRole(int id);
        Task<T2> PutAgreementPartyRole(int id, T1 agreementPartyRole);
        Task<T2> PostAgreementPartyRole(T1 agreementPartyRole);
        Task<T2> DeleteAgreementPartyRole(int id);
        bool AgreementPartyRoleExists(int id);
        Task<T3> ExecuteAsync(T4 controllerContext, CancellationToken cancellationToken);
        T5 Db { get; }
    }
}