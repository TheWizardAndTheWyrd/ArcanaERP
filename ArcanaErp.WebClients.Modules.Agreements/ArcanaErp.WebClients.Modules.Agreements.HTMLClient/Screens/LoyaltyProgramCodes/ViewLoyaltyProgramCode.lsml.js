/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewLoyaltyProgramCode.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.LoyaltyProgramCode.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.LoyaltyProgramCode." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

