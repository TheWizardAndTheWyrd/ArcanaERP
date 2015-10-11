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
    public class AgreementItemTypesController : ApiController, 
                                                IAgreementItemTypesController<IAgreementItemType,
                                                                              IHttpActionResult,
                                                                              HttpResponseMessage,
                                                                              HttpControllerContext,
                                                                              ErpDataModel>
    {
        private ErpDataModel _db = new ErpDataModel();

        public ErpDataModel Db => _db;

        // GET: api/AgreementItemTypes
        public IQueryable<IAgreementItemType> GetAgreementItemTypes()
        {
            return _db.AgreementItemTypes;
        }

        // GET: api/AgreementItemTypes/5
        [ResponseType(typeof(AgreementItemType))]
        public async Task<IHttpActionResult> GetAgreementItemType(int id)
        {
            AgreementItemType agreementItemType = await _db.AgreementItemTypes.FindAsync(id);
            if (agreementItemType == null)
            {
                return NotFound();
            }

            return Ok(agreementItemType);
        }

        // PUT: api/AgreementItemTypes/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> PutAgreementItemType(int id, IAgreementItemType agreementItemType)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != agreementItemType.Id)
            {
                return BadRequest();
            }

            _db.Entry(agreementItemType).State = EntityState.Modified;

            try
            {
                await _db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!AgreementItemTypeExists(id))
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

        // POST: api/AgreementItemTypes
        [ResponseType(typeof(AgreementItemType))]
        public async Task<IHttpActionResult> PostAgreementItemType(IAgreementItemType agreementItemType)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _db.AgreementItemTypes.Add(agreementItemType as AgreementItemType);
            await _db.SaveChangesAsync();

            return CreatedAtRoute("DefaultApi", new { id = agreementItemType.Id }, agreementItemType);
        }

        // DELETE: api/AgreementItemTypes/5
        [ResponseType(typeof(AgreementItemType))]
        public async Task<IHttpActionResult> DeleteAgreementItemType(int id)
        {
            AgreementItemType agreementItemType = await _db.AgreementItemTypes.FindAsync(id);
            if (agreementItemType == null)
            {
                return NotFound();
            }

            _db.AgreementItemTypes.Remove(agreementItemType);
            await _db.SaveChangesAsync();

            return Ok(agreementItemType);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                _db.Dispose();
            }
            base.Dispose(disposing);
        }

        public bool AgreementItemTypeExists(int id)
        {
            return _db.AgreementItemTypes.Count(e => e.Id == id) > 0;
        }
    }
}