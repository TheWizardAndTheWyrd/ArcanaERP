/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewAgreementRelationshipType.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.AgreementRelationshipType.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.AgreementRelationshipType." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

