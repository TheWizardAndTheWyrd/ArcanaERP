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
    public class AgreementRelationshipsController : ApiController, 
                                                    IAgreementRelationshipsController<IAgreementRelationship,
                                                                                      IHttpActionResult,
                                                                                      HttpResponseMessage,
                                                                                      HttpControllerContext,
                                                                                      ErpDataModel>
    {
        private ErpDataModel _db = new ErpDataModel();

        public ErpDataModel Db => _db;

        // GET: api/AgreementRelationships
        public IQueryable<IAgreementRelationship> GetAgreementRelationships()
        {
            return _db.AgreementRelationships;
        }

        // GET: api/AgreementRelationships/5
        [ResponseType(typeof(AgreementRelationship))]
        public async Task<IHttpActionResult> GetAgreementRelationship(int id)
        {
            AgreementRelationship agreementRelationship = await _db.AgreementRelationships.FindAsync(id);
            if (agreementRelationship == null)
            {
                return NotFound();
            }

            return Ok(agreementRelationship);
        }

        // PUT: api/AgreementRelationships/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> PutAgreementRelationship(int id, IAgreementRelationship agreementRelationship)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != agreementRelationship.Id)
            {
                return BadRequest();
            }

            _db.Entry(agreementRelationship).State = EntityState.Modified;

            try
            {
                await _db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!AgreementRelationshipExists(id))
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

        // POST: api/AgreementRelationships
        [ResponseType(typeof(AgreementRelationship))]
        public async Task<IHttpActionResult> PostAgreementRelationship(IAgreementRelationship agreementRelationship)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _db.AgreementRelationships.Add(agreementRelationship as AgreementRelationship);
            await _db.SaveChangesAsync();

            return CreatedAtRoute("DefaultApi", new { id = agreementRelationship.Id }, agreementRelationship);
        }

        // DELETE: api/AgreementRelationships/5
        [ResponseType(typeof(AgreementRelationship))]
        public async Task<IHttpActionResult> DeleteAgreementRelationship(int id)
        {
            AgreementRelationship agreementRelationship = await _db.AgreementRelationships.FindAsync(id);
            if (agreementRelationship == null)
            {
                return NotFound();
            }

            _db.AgreementRelationships.Remove(agreementRelationship);
            await _db.SaveChangesAsync();

            return Ok(agreementRelationship);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                _db.Dispose();
            }
            base.Dispose(disposing);
        }

        public bool AgreementRelationshipExists(int id)
        {
            return _db.AgreementRelationships.Count(e => e.Id == id) > 0;
        }
    }
}