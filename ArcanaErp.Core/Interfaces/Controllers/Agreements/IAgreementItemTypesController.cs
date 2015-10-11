using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace ArcanaErp.Core.Interfaces.Controllers.Agreements
{
    public interface IAgreementItemTypesController<T1, T2, T3, in T4, out T5>
    {
        IQueryable<T1> GetAgreementItemTypes();
        Task<T2> GetAgreementItemType(int id);
        Task<T2> PutAgreementItemType(int id, T1 agreementItemType);
        Task<T2> PostAgreementItemType(T1 agreementItemType);
        Task<T2> DeleteAgreementItemType(int id);
        bool AgreementItemTypeExists(int id);
        Task<T3> ExecuteAsync(T4 controllerContext, CancellationToken cancellationToken);
        T5 Db { get; }
    }
}