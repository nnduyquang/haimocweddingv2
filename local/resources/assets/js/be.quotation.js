if ($('#content-quotation').length) {
    CKEDITOR.replace('content', {
        height: 400,
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
if ($('#btnBrowseQuotations').length) {
    var button1 = document.getElementById('btnBrowseQuotations');

    button1.onclick = function () {
        selectFileWithCKFinder('pathQuotation','showHinhQuotation');
    }
}