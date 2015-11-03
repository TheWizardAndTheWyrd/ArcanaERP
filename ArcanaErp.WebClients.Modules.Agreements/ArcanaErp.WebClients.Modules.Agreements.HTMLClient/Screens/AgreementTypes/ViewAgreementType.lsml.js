/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewAgreementType.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.AgreementType.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.AgreementType." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

