/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewAgreementPartyRole.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.AgreementPartyRole.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.AgreementPartyRole." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

