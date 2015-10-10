using System.Linq;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Controllers;
using ArcanaErp.Core.Interfaces.Models.Agreements;
using ArcanaErp.Core.Models.Erp;

namespace ArcanaErp.Core.Interfaces.Controllers.Agreements
{
    public interface IAgreementsController<T1, T2, T3, in T4, T5>
    {
        //IQueryable<Agreement> GetAgreements();
        IQueryable<T1> GetAgreements();
        //Task<IHttpActionResult> GetAgreement(int id);
        //Task<IHttpActionResult> PutAgreement(int id, Agreement agreement);
        //Task<IHttpActionResult> PostAgreement(Agreement agreement);
        //Task<IHttpActionResult> DeleteAgreement(int id);
        Task<T2> GetAgreement(int id);
        Task<T2> PutAgreement(int id, T1 agreement);
        Task<T2> PostAgreement(T1 agreement);
        Task<T2> DeleteAgreement(int id);
        bool AgreementExists(int id);
        //Task<HttpResponseMessage> ExecuteAsync(HttpControllerContext controllerContext, CancellationToken cancellationToken);
        Task<T3> ExecuteAsync(T4 controllerContext, CancellationToken cancellationToken);
        T5 Db { get; }
    }
}