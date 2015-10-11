using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace ArcanaErp.Core.Interfaces.Controllers.Agreements
{
    public interface IAgreementTypesController<T1, T2, T3, in T4, out T5>
    {
        IQueryable<T1> GetAgreementTypes();
        Task<T2> GetAgreementType(int id);
        Task<T2> PutAgreementType(int id, T1 agreementType);
        Task<T2> PostAgreementType(T1 agreementType);
        Task<T2> DeleteAgreementType(int id);
        bool AgreementTypeExists(int id);
        Task<T3> ExecuteAsync(T4 controllerContext, CancellationToken cancellationToken);
        T5 Db { get; }
    }
}