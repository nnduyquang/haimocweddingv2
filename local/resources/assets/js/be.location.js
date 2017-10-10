if ($('#content-location').length) {
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
if ($('#content-mota-1').length) {
    CKEDITOR.replace('content-mota-1', {
        height: 200,
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
if ($('#content-mota-2').length) {
    CKEDITOR.replace('content-mota-2', {
        height: 200,
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
if ($('#content-mota-3').length) {
    CKEDITOR.replace('content-mota-3', {
        height: 200,
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
if ($('#btnBrowseDD1').length) {
    var button1 = document.getElementById('btnBrowseDD1');

    button1.onclick = function () {
        selectFileWithCKFinder('path1','showHinh1');
    }
}
if ($('#btnBrowseDD2').length) {
    var button1 = document.getElementById('btnBrowseDD2');

    button1.onclick = function () {
        selectFileWithCKFinder('path2','showHinh2');
    }
}
if ($('#btnBrowseDD3').length) {
    var button1 = document.getElementById('btnBrowseDD3');

    button1.onclick = function () {
        selectFileWithCKFinder('path3','showHinh3');
    }
}

if ($('#btnBrowseCover').length) {
    var button1 = document.getElementById('btnBrowseCover');

    button1.onclick = function () {
        selectFileWithCKFinder('pathCover','showDDCover');
    }
}
if ($('#btnBrowseAvata').length) {
    var button1 = document.getElementById('btnBrowseAvata');

    button1.onclick = function () {
        selectFileWithCKFinder('pathAvata','showDDAvata');
    }
}
if ($('#btnBrowseBackground').length) {
    var button1 = document.getElementById('btnBrowseBackground');

    button1.onclick = function () {
        selectFileWithCKFinder('pathBackground','showDDBackground');
    }
}
// function selectFileWithCKFinder(elementId,showHinhId) {
//     window.KCFinder = {
//         callBack: function (url) {
//             var output = document.getElementById(elementId);
//             output.value = url;
//             $('#'+showHinhId).show();
//             $('#'+showHinhId).fadeIn("fast").attr('src', url);
//             window.KCFinder = null;
//         }
//     };
//     window.open(getBaseURL() + 'js/kcfinder/browse.php?type=images', 'kcfinder_textbox',
//         'status=0, toolbar=0, location=0, menubar=0, directories=0, ' +
//         'resizable=1, scrollbars=0, width=800, height=600'
//     );
// }