/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewAgreements.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.Agreement.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.Agreement." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

