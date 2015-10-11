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
    public class AgreementItemsController : ApiController, 
                                            IAgreementItemsController<IAgreementItem,
                                                                      IHttpActionResult,
                                                                      HttpResponseMessage,
                                                                      HttpControllerContext,
                                                                      ErpDataModel>
    {
        private ErpDataModel _db = new ErpDataModel();

        public ErpDataModel Db => _db;

        // GET: api/AgreementItems
        public IQueryable<IAgreementItem> GetAgreementItems()
        {
            return _db.AgreementItems;
        }

        // GET: api/AgreementItems/5
        [ResponseType(typeof(AgreementItem))]
        public async Task<IHttpActionResult> GetAgreementItem(int id)
        {
            AgreementItem agreementItem = await _db.AgreementItems.FindAsync(id);
            if (agreementItem == null)
            {
                return NotFound();
            }

            return Ok(agreementItem);
        }

        // PUT: api/AgreementItems/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> PutAgreementItem(int id, IAgreementItem agreementItem)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != agreementItem.Id)
            {
                return BadRequest();
            }

            _db.Entry(agreementItem).State = EntityState.Modified;

            try
            {
                await _db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!AgreementItemExists(id))
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

        // POST: api/AgreementItems
        [ResponseType(typeof(AgreementItem))]
        public async Task<IHttpActionResult> PostAgreementItem(IAgreementItem agreementItem)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _db.AgreementItems.Add(agreementItem as AgreementItem);
            await _db.SaveChangesAsync();

            return CreatedAtRoute("DefaultApi", new { id = agreementItem.Id }, agreementItem);
        }

        // DELETE: api/AgreementItems/5
        [ResponseType(typeof(AgreementItem))]
        public async Task<IHttpActionResult> DeleteAgreementItem(int id)
        {
            AgreementItem agreementItem = await _db.AgreementItems.FindAsync(id);
            if (agreementItem == null)
            {
                return NotFound();
            }

            _db.AgreementItems.Remove(agreementItem);
            await _db.SaveChangesAsync();

            return Ok(agreementItem);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                _db.Dispose();
            }
            base.Dispose(disposing);
        }

        public bool AgreementItemExists(int id)
        {
            return _db.AgreementItems.Count(e => e.Id == id) > 0;
        }
    }
}