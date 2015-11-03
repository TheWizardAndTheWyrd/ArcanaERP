/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewAgreementItem.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.AgreementItem.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.AgreementItem." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

