using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace ArcanaErp.Core.Interfaces.Controllers.Agreements
{
    public interface ILoyaltyProgramCodesController<T1, T2, T3, in T4, out T5>
    {
        IQueryable<T1> GetLoyaltyProgramCodes();
        Task<T2> GetLoyaltyProgramCode(int id);
        Task<T2> PutLoyaltyProgramCode(int id, T1 loyaltyProgramCode);
        Task<T2> PostLoyaltyProgramCode(T1 loyaltyProgramCode);
        Task<T2> DeleteLoyaltyProgramCode(int id);
        bool LoyaltyProgramCodeExists(int id);
        Task<T3> ExecuteAsync(T4 controllerContext, CancellationToken cancellationToken);
        T5 Db { get; }
    }
}