using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace ArcanaErp.Core.Interfaces.Controllers.Agreements
{
    public interface IAgreementItemsController<T1, T2, T3, in T4, out T5>
    {
        IQueryable<T1> GetAgreementItems();
        Task<T2> GetAgreementItem(int id);
        Task<T2> PutAgreementItem(int id, T1 agreementItem);
        Task<T2> PostAgreementItem(T1 agreementItem);
        Task<T2> DeleteAgreementItem(int id);
        bool AgreementItemExists(int id);
        Task<T3> ExecuteAsync(T4 controllerContext, CancellationToken cancellationToken);
        T5 Db { get; }
    }
}