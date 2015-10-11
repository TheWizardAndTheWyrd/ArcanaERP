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
    public class LoyaltyProgramCodesController : ApiController, 
                                                 ILoyaltyProgramCodesController<ILoyaltyProgramCode,
                                                                                IHttpActionResult,
                                                                                HttpResponseMessage,
                                                                                HttpControllerContext,
                                                                                ErpDataModel>
    {
        private ErpDataModel _db = new ErpDataModel();

        public ErpDataModel Db => _db;

        // GET: api/LoyaltyProgramCodes
        public IQueryable<ILoyaltyProgramCode> GetLoyaltyProgramCodes()
        {
            return _db.LoyaltyProgramCodes;
        }

        // GET: api/LoyaltyProgramCodes/5
        [ResponseType(typeof(LoyaltyProgramCode))]
        public async Task<IHttpActionResult> GetLoyaltyProgramCode(int id)
        {
            LoyaltyProgramCode loyaltyProgramCode = await _db.LoyaltyProgramCodes.FindAsync(id);
            if (loyaltyProgramCode == null)
            {
                return NotFound();
            }

            return Ok(loyaltyProgramCode);
        }

        // PUT: api/LoyaltyProgramCodes/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> PutLoyaltyProgramCode(int id, ILoyaltyProgramCode loyaltyProgramCode)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != loyaltyProgramCode.Id)
            {
                return BadRequest();
            }

            _db.Entry(loyaltyProgramCode).State = EntityState.Modified;

            try
            {
                await _db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!LoyaltyProgramCodeExists(id))
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

        // POST: api/LoyaltyProgramCodes
        [ResponseType(typeof(LoyaltyProgramCode))]
        public async Task<IHttpActionResult> PostLoyaltyProgramCode(ILoyaltyProgramCode loyaltyProgramCode)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _db.LoyaltyProgramCodes.Add(loyaltyProgramCode as LoyaltyProgramCode);
            await _db.SaveChangesAsync();

            return CreatedAtRoute("DefaultApi", new { id = loyaltyProgramCode.Id }, loyaltyProgramCode);
        }

        // DELETE: api/LoyaltyProgramCodes/5
        [ResponseType(typeof(LoyaltyProgramCode))]
        public async Task<IHttpActionResult> DeleteLoyaltyProgramCode(int id)
        {
            LoyaltyProgramCode loyaltyProgramCode = await _db.LoyaltyProgramCodes.FindAsync(id);
            if (loyaltyProgramCode == null)
            {
                return NotFound();
            }

            _db.LoyaltyProgramCodes.Remove(loyaltyProgramCode);
            await _db.SaveChangesAsync();

            return Ok(loyaltyProgramCode);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                _db.Dispose();
            }
            base.Dispose(disposing);
        }

        public bool LoyaltyProgramCodeExists(int id)
        {
            return _db.LoyaltyProgramCodes.Count(e => e.Id == id) > 0;
        }
    }
}