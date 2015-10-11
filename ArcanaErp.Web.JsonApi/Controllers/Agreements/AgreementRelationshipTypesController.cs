using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Controllers;
using System.Web.Http.Description;
using ArcanaErp.Core.Interfaces.Controllers.Agreements;
using ArcanaErp.Core.Interfaces.Models.Agreements;
using ArcanaErp.Core.Models.Erp;

namespace ArcanaErp.Web.JsonApi.Controllers.Agreements
{
    public class AgreementRelationshipTypesController : ApiController, 
                                                        IAgreementRelationshipTypesController<IAgreementRelationshipType,
                                                                                              IHttpActionResult,
                                                                                              HttpResponseMessage,
                                                                                              HttpControllerContext,
                                                                                              ErpDataModel>
    {
        private ErpDataModel _db = new ErpDataModel();

        public ErpDataModel Db => _db;

        // GET: api/AgreementRelationshipTypes
        public IQueryable<IAgreementRelationshipType> GetAgreementRelationshipTypes()
        {
            return _db.AgreementRelationshipTypes;
        }

        // GET: api/AgreementRelationshipTypes/5
        [ResponseType(typeof(AgreementRelationshipType))]
        public async Task<IHttpActionResult> GetAgreementRelationshipType(int id)
        {
            AgreementRelationshipType agreementRelationshipType = await _db.AgreementRelationshipTypes.FindAsync(id);
            if (agreementRelationshipType == null)
            {
                return NotFound();
            }

            return Ok(agreementRelationshipType);
        }

        // PUT: api/AgreementRelationshipTypes/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> PutAgreementRelationshipType(int id, IAgreementRelationshipType agreementRelationshipType)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != agreementRelationshipType.Id)
            {
                return BadRequest();
            }

            _db.Entry(agreementRelationshipType).State = EntityState.Modified;

            try
            {
                await _db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!AgreementRelationshipTypeExists(id))
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

        // POST: api/AgreementRelationshipTypes
        [ResponseType(typeof(AgreementRelationshipType))]
        public async Task<IHttpActionResult> PostAgreementRelationshipType(IAgreementRelationshipType agreementRelationshipType)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _db.AgreementRelationshipTypes.Add(agreementRelationshipType as AgreementRelationshipType);
            await _db.SaveChangesAsync();

            return CreatedAtRoute("DefaultApi", new { id = agreementRelationshipType.Id }, agreementRelationshipType);
        }

        // DELETE: api/AgreementRelationshipTypes/5
        [ResponseType(typeof(AgreementRelationshipType))]
        public async Task<IHttpActionResult> DeleteAgreementRelationshipType(int id)
        {
            AgreementRelationshipType agreementRelationshipType = await _db.AgreementRelationshipTypes.FindAsync(id);
            if (agreementRelationshipType == null)
            {
                return NotFound();
            }

            _db.AgreementRelationshipTypes.Remove(agreementRelationshipType);
            await _db.SaveChangesAsync();

            return Ok(agreementRelationshipType);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                _db.Dispose();
            }
            base.Dispose(disposing);
        }

        public bool AgreementRelationshipTypeExists(int id)
        {
            return _db.AgreementRelationshipTypes.Count(e => e.Id == id) > 0;
        }
    }
}