namespace ArcanaErp.Core.Interfaces.Models.ContentManagementSystem
{
    public interface IComment : Lambda.Interfaces.IBaseErpModel,
                                Lambda.Interfaces.IBaseErpModelComment,
                                Lambda.Interfaces.IBaseErpModelEmail,
                                Lambda.Interfaces.IBaseErpModelApproved,
                                Lambda.Interfaces.IBaseErpModelUserId
    {
         
    }
}