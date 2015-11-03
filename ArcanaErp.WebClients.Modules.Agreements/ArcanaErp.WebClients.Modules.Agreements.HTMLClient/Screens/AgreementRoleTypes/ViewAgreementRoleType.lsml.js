/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewAgreementRoleType.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.AgreementRoleType.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.AgreementRoleType." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

