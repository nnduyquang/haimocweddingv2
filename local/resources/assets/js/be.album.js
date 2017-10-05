if ($('#btnThemAnhAlbum').length) {
    var button1 = document.getElementById('btnThemAnhAlbum');

    button1.onclick = function () {
        selectFileAlbumWithCKFinder();
    }
}
function selectFileAlbumWithCKFinder() {
    window.KCFinder = {
        callBackMultiple: function (files) {
            window.KCFinder = null;
            for (var i = 0; i < files.length; i++)
                $('#insertImage').append(appendHtml(files[i]));
        }
    };
    window.open(getBaseURL() + 'js/kcfinder/browse.php?type=images', 'kcfinder_multiple',
        'status=0, toolbar=0, location=0, menubar=0, directories=0, ' +
        'resizable=1, scrollbars=0, width=800, height=600'
    );
}
function appendHtml(path) {
    var html = "<div class='col-md-1'>"
        + "<img src='" + path + "' class='img-choose' alt=''>"
        + "<input name='imageChooses[]' type='checkbox' value='" + path + "'>"
        + "</div>";
    return html;
}
$('#btnXoaAnhAlbum').click(function () {
    $.each($("input[name='imageChoose[]']:checked"), function () {
        $(this).parent().remove();
    });
});
$('#btnSubmitThemAlbum').click(function(){
    $.each($("input[name='imageChooses[]']"), function () {
        $(this).prop('checked', true);
    });
    $('#formThem').submit();
});
if ($('#btnBrowseAlbumCover').length) {
    var button1 = document.getElementById('btnBrowseAlbumCover');

    button1.onclick = function () {
        selectFileWithCKFinder('pathAlbumCover','showHinhAlbumCover');
    }
}
if ($('#content-album').length) {
    CKEDITOR.replace('content-album', {
        height: 500,
        language: 'vi',
        format_tags: 'p;h1;h2;h3;pre',
        filebrowserBrowseUrl: '../../js/kcfinder/browse.php?type=files',
        filebrowserImageBrowseUrl: '../../js/kcfinder/browse.php?type=images',
        filebrowserFlashBrowseUrl: '../../js/kcfinder/browse.php?type=flash',
        filebrowserUploadUrl: '../../js/kcfinder/upload.php?type=files',
        filebrowserImageUploadUrl: '../../js/kcfinder/upload.php?type=images',
        filebrowserFlashUploadUrl: '../../js/kcfinder/upload.php?type=flash'
    })
    ;
}