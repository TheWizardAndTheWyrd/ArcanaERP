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
    public class AgreementPartyRolesController : ApiController, 
                                                 IAgreementPartyRolesController<IAgreementPartyRole,
                                                                                IHttpActionResult,
                                                                                HttpResponseMessage,
                                                                                HttpControllerContext,
                                                                                ErpDataModel>
    {
        private ErpDataModel _db = new ErpDataModel();

        public ErpDataModel Db => _db;

        // GET: api/AgreementPartyRoles
        public IQueryable<IAgreementPartyRole> GetAgreementPartyRoles()
        {
            return _db.AgreementPartyRoles;
        }

        // GET: api/AgreementPartyRoles/5
        [ResponseType(typeof(AgreementPartyRole))]
        public async Task<IHttpActionResult> GetAgreementPartyRole(int id)
        {
            AgreementPartyRole agreementPartyRole = await _db.AgreementPartyRoles.FindAsync(id);
            if (agreementPartyRole == null)
            {
                return NotFound();
            }

            return Ok(agreementPartyRole);
        }

        // PUT: api/AgreementPartyRoles/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> PutAgreementPartyRole(int id, IAgreementPartyRole agreementPartyRole)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != agreementPartyRole.Id)
            {
                return BadRequest();
            }

            _db.Entry(agreementPartyRole).State = EntityState.Modified;

            try
            {
                await _db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!AgreementPartyRoleExists(id))
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

        // POST: api/AgreementPartyRoles
        [ResponseType(typeof(AgreementPartyRole))]
        public async Task<IHttpActionResult> PostAgreementPartyRole(IAgreementPartyRole agreementPartyRole)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _db.AgreementPartyRoles.Add(agreementPartyRole as AgreementPartyRole);
            await _db.SaveChangesAsync();

            return CreatedAtRoute("DefaultApi", new { id = agreementPartyRole.Id }, agreementPartyRole);
        }

        // DELETE: api/AgreementPartyRoles/5
        [ResponseType(typeof(AgreementPartyRole))]
        public async Task<IHttpActionResult> DeleteAgreementPartyRole(int id)
        {
            AgreementPartyRole agreementPartyRole = await _db.AgreementPartyRoles.FindAsync(id);
            if (agreementPartyRole == null)
            {
                return NotFound();
            }

            _db.AgreementPartyRoles.Remove(agreementPartyRole);
            await _db.SaveChangesAsync();

            return Ok(agreementPartyRole);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                _db.Dispose();
            }
            base.Dispose(disposing);
        }

        public bool AgreementPartyRoleExists(int id)
        {
            return _db.AgreementPartyRoles.Count(e => e.Id == id) > 0;
        }
    }
}