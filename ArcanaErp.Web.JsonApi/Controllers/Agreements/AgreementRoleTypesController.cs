using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Controllers;
using System.Web.Http.Description;
using ArcanaErp.Core.Interfaces.Controllers.Agreements;
using ArcanaErp.Core.Interfaces.Models.Agreements;
using ArcanaErp.Core.Models.Erp;

namespace ArcanaErp.Web.JsonApi.Controllers.Agreements
{
    public class AgreementRoleTypesController : ApiController, 
                                                IAgreementRoleTypesController<IAgreementRoleType,
                                                                              IHttpActionResult,
                                                                              HttpResponseMessage,
                                                                              HttpControllerContext,
                                                                              ErpDataModel>
    {
        private ErpDataModel _db = new ErpDataModel();

        public ErpDataModel Db => _db;

        // GET: api/AgreementRoleTypes
        public IQueryable<IAgreementRoleType> GetAgreementRoleTypes()
        {
            return _db.AgreementRoleTypes;
        }

        // GET: api/AgreementRoleTypes/5
        [ResponseType(typeof(AgreementRoleType))]
        public async Task<IHttpActionResult> GetAgreementRoleType(int id)
        {
            AgreementRoleType agreementRoleType = await _db.AgreementRoleTypes.FindAsync(id);
            if (agreementRoleType == null)
            {
                return NotFound();
            }

            return Ok(agreementRoleType);
        }

        // PUT: api/AgreementRoleTypes/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> PutAgreementRoleType(int id, IAgreementRoleType agreementRoleType)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != agreementRoleType.Id)
            {
                return BadRequest();
            }

            _db.Entry(agreementRoleType).State = EntityState.Modified;

            try
            {
                await _db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!AgreementRoleTypeExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/AgreementRoleTypes
        [ResponseType(typeof(AgreementRoleType))]
        public async Task<IHttpActionResult> PostAgreementRoleType(IAgreementRoleType agreementRoleType)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _db.AgreementRoleTypes.Add(agreementRoleType as AgreementRoleType);
            await _db.SaveChangesAsync();

            return CreatedAtRoute("DefaultApi", new { id = agreementRoleType.Id }, agreementRoleType);
        }

        // DELETE: api/AgreementRoleTypes/5
        [ResponseType(typeof(AgreementRoleType))]
        public async Task<IHttpActionResult> DeleteAgreementRoleType(int id)
        {
            AgreementRoleType agreementRoleType = await _db.AgreementRoleTypes.FindAsync(id);
            if (agreementRoleType == null)
            {
                return NotFound();
            }

            _db.AgreementRoleTypes.Remove(agreementRoleType);
            await _db.SaveChangesAsync();

            return Ok(agreementRoleType);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                _db.Dispose();
            }
            base.Dispose(disposing);
        }

        public bool AgreementRoleTypeExists(int id)
        {
            return _db.AgreementRoleTypes.Count(e => e.Id == id) > 0;
        }
    }
}