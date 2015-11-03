/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewAgreementItemType.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.AgreementItemType.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.AgreementItemType." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

