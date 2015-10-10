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
    public class AgreementsController : ApiController, 
                                        IAgreementsController<IAgreement, 
                                                              IHttpActionResult, 
                                                              HttpResponseMessage, 
                                                              HttpControllerContext,
                                                              ErpDataModel>
    {
        private readonly ErpDataModel _db = new ErpDataModel();

        public ErpDataModel Db => _db;

        // GET: api/Agreements
        public IQueryable<IAgreement> GetAgreements()
        {
            return _db.Agreements;
        }

        // GET: api/Agreements/5
        [ResponseType(typeof(IAgreement))]
        public async Task<IHttpActionResult> GetAgreement(int id)
        {
            Agreement agreement = await _db.Agreements.FindAsync(id);
            if (agreement == null)
            {
                return NotFound();
            }

            return Ok(agreement);
        }

        // PUT: api/Agreements/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> PutAgreement(int id, IAgreement agreement)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != agreement.Id)
            {
                return BadRequest();
            }

            _db.Entry(agreement).State = EntityState.Modified;

            try
            {
                await _db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!AgreementExists(id))
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

        // POST: api/Agreements
        [ResponseType(typeof(Agreement))]
        public async Task<IHttpActionResult> PostAgreement(IAgreement agreement)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _db.Agreements.Add(agreement as Agreement);
            await _db.SaveChangesAsync();

            return CreatedAtRoute("DefaultApi", new { id = agreement.Id }, agreement);
        }

        // DELETE: api/Agreements/5
        [ResponseType(typeof(Agreement))]
        public async Task<IHttpActionResult> DeleteAgreement(int id)
        {
            Agreement agreement = await _db.Agreements.FindAsync(id);
            if (agreement == null)
            {
                return NotFound();
            }

            _db.Agreements.Remove(agreement);
            await _db.SaveChangesAsync();

            return Ok(agreement);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                _db.Dispose();
            }
            base.Dispose(disposing);
        }

        public bool AgreementExists(int id)
        {
            return _db.Agreements.Count(e => e.Id == id) > 0;
        }
    }
}