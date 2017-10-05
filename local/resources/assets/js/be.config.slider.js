if ($('#btnBrowseImageSlider').length) {
    var button1 = document.getElementById('btnBrowseImageSlider');

    button1.onclick = function () {
        selectFileWithKCFinder('path');
    }
}
;
if ($('#path').val() == '')
    $('#showSliderImage').hide();
else
    $('#showSliderImage').show();

function selectFileWithKCFinder(elementId) {
    window.KCFinder = {
        callBack: function (url) {
            var output = document.getElementById(elementId);
            output.value = url;
            $('#showSliderImage').show();
            $('#showSliderImage').fadeIn("fast").attr('src', url);
            window.KCFinder = null;
        }
    };
    window.open(getBaseURL()+'js/kcfinder/browse.php?type=images', 'kcfinder_textbox',
        'status=0, toolbar=0, location=0, menubar=0, directories=0, ' +
        'resizable=1, scrollbars=0, width=800, height=600'
    );
}
