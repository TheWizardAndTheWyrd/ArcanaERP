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
    public class AgreementTypesController : ApiController, 
                                            IAgreementTypesController<IAgreementType,
                                                                      IHttpActionResult,
                                                                      HttpResponseMessage,
                                                                      HttpControllerContext,
                                                                      ErpDataModel>
    {
        private ErpDataModel _db = new ErpDataModel();

        public ErpDataModel Db => _db;

        // GET: api/AgreementTypes
        public IQueryable<IAgreementType> GetAgreementTypes()
        {
            return _db.AgreementTypes;
        }

        // GET: api/AgreementTypes/5
        [ResponseType(typeof(AgreementType))]
        public async Task<IHttpActionResult> GetAgreementType(int id)
        {
            AgreementType agreementType = await _db.AgreementTypes.FindAsync(id);
            if (agreementType == null)
            {
                return NotFound();
            }

            return Ok(agreementType);
        }

        // PUT: api/AgreementTypes/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> PutAgreementType(int id, IAgreementType agreementType)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != agreementType.Id)
            {
                return BadRequest();
            }

            _db.Entry(agreementType).State = EntityState.Modified;

            try
            {
                await _db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!AgreementTypeExists(id))
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

        // POST: api/AgreementTypes
        [ResponseType(typeof(AgreementType))]
        public async Task<IHttpActionResult> PostAgreementType(IAgreementType agreementType)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _db.AgreementTypes.Add(agreementType as AgreementType);
            await _db.SaveChangesAsync();

            return CreatedAtRoute("DefaultApi", new { id = agreementType.Id }, agreementType);
        }

        // DELETE: api/AgreementTypes/5
        [ResponseType(typeof(AgreementType))]
        public async Task<IHttpActionResult> DeleteAgreementType(int id)
        {
            AgreementType agreementType = await _db.AgreementTypes.FindAsync(id);
            if (agreementType == null)
            {
                return NotFound();
            }

            _db.AgreementTypes.Remove(agreementType);
            await _db.SaveChangesAsync();

            return Ok(agreementType);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                _db.Dispose();
            }
            base.Dispose(disposing);
        }

        public bool AgreementTypeExists(int id)
        {
            return _db.AgreementTypes.Count(e => e.Id == id) > 0;
        }
    }
}