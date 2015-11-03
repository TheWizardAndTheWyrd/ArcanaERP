/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewAgreementRelationship.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.AgreementRelationship.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.AgreementRelationship." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

