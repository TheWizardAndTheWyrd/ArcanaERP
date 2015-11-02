using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface INote : Lambda.Interfaces.IBaseErpModel,
                             Lambda.Interfaces.IBaseErpModelCreatedById,
                             Lambda.Interfaces.IBaseErpModelContent,
                             Lambda.Interfaces.IBaseErpModelNotedRecordId,
                             Lambda.Interfaces.IBaseErpModelNotedRecordType,
                             Lambda.Interfaces.IBaseErpModelNoteTypeId
    {

    }
}