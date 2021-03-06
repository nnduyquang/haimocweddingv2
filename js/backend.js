var token = $('meta[name="csrf-token"]').attr('content');
function getBaseURL() {
    var url = location.href;  // entire url including querystring - also: window.location.href;
    var baseURL = url.substring(0, url.indexOf('/', 14));
    if (baseURL.indexOf('http://localhost') != -1) {
        // Base Url for localhost
        var url = location.href;  // window.location.href;
        var pathname = location.pathname;  // window.location.pathname;
        var index1 = url.indexOf(pathname);
        var index2 = url.indexOf("/", index1 + 1);
        var baseLocalUrl = url.substr(0, index2);
        return baseLocalUrl + "/";
    }
    else {
        // Root Url for domain name
        return baseURL + "/";
    }

}
function selectFileWithCKFinder(elementId,showHinhId) {
    window.KCFinder = {
        callBack: function (url) {
            var output = document.getElementById(elementId);
            output.value = url;
            $('#'+showHinhId).show();
            $('#'+showHinhId).fadeIn("fast").attr('src', url);
            window.KCFinder = null;
        }
    };
    window.open(getBaseURL() + 'js/kcfinder/browse.php?type=images', 'kcfinder_textbox',
        'status=0, toolbar=0, location=0, menubar=0, directories=0, ' +
        'resizable=1, scrollbars=0, width=800, height=600'
    );
}
if ($('#content-news').length) {
    CKEDITOR.replace('content-news', {
        height: 800,
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
if ($('#btnBrowse').length) {
    var button1 = document.getElementById('btnBrowse');

    button1.onclick = function () {
        selectFileWithCKFinder('path','showHinhDaiDien');
    }
}
;
if ($('#path').val() == '')
    $('#showHinhDaiDien').hide();
else
    $('#showHinhDaiDien').show();

// function selectFileWithCKFinder(elementId) {
//     window.KCFinder = {
//         callBack: function (url) {
//             var output = document.getElementById(elementId);
//             output.value = url;
//             $('#showHinhDaiDien').show();
//             $('#showHinhDaiDien').fadeIn("fast").attr('src', url);
//             window.KCFinder = null;
//         }
//     };
//     window.open(getBaseURL() + 'js/kcfinder/browse.php?type=images', 'kcfinder_textbox',
//         'status=0, toolbar=0, location=0, menubar=0, directories=0, ' +
//         'resizable=1, scrollbars=0, width=800, height=600'
//     );
// }

$('#btnSearchTinTuc').click(function () {
    if ($('#txtSearch').val().trim() == '')
        return;
    if ($('#txtSearch').val().trim().replace(/ +(?= )/g, '') == $("input[name='hdKeyword']").val())
        return;
    $('#formSearchNews').submit();
});

if ($('#content-post').length) {
    CKEDITOR.replace('content', {
        height: 800,
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
// if ($('#content-news-edit').length) {
//     CKEDITOR.replace('content-news', {
//         height: 800,
//         language: 'vi',
//         format_tags: 'p;h1;h2;h3;pre',
//         filebrowserBrowseUrl: '../../../js/kcfinder/browse.php?type=files',
//         filebrowserImageBrowseUrl: '../../../js/kcfinder/browse.php?type=images',
//         filebrowserFlashBrowseUrl: '../../../js/kcfinder/browse.php?type=flash',
//         filebrowserUploadUrl: '../../../js/kcfinder/upload.php?type=files',
//         filebrowserImageUploadUrl: '../../../js/kcfinder/upload.php?type=images',
//         filebrowserFlashUploadUrl: '../../../js/kcfinder/upload.php?type=flash'
//     })
//     ;
// }
if ($('#btnBrowsePost').length) {
    var button1 = document.getElementById('btnBrowsePost');

    button1.onclick = function () {
        selectFileWithCKFinder('pathPost','showHinhDaiDienPost');
    }
}
;
if ($('#pathPost').val() == '')
    $('#showHinhDaiDienPost').hide();
else
    $('#showHinhDaiDienPost').show();

// function selectFileWithCKFinder(elementId) {
//     window.KCFinder = {
//         callBack: function (url) {
//             var output = document.getElementById(elementId);
//             output.value = url;
//             alert(url);
//             $('#showHinhDaiDienPost').show();
//             $('#showHinhDaiDienPost').fadeIn("fast").attr('src', url);
//             window.KCFinder = null;
//         }
//     };
//     window.open(getBaseURL() + 'js/kcfinder/browse.php?type=images', 'kcfinder_textbox',
//         'status=0, toolbar=0, location=0, menubar=0, directories=0, ' +
//         'resizable=1, scrollbars=0, width=800, height=600'
//     );
// }

$('#btnSearchPost').click(function () {
    if ($('#txtSearch').val().trim() == '')
        return;
    if ($('#txtSearch').val().trim().replace(/ +(?= )/g, '') == $("input[name='hdKeyword']").val())
        return;
    $('#formSearchPost').submit();
});

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
if ($('#btnBrowseMini').length) {
    var button1 = document.getElementById('btnBrowseMini');

    button1.onclick = function () {
        selectFileWithCKFinder('pathImageMobile','showDDMini');
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
//
// $(document).ready(function () {
$('.fancybox').fancybox();
// });
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
        + "<a class='fancybox' data-fancybox='gallery' href='" + path + "'>"
        + "<img src='" + path + "' class='img-choose' alt=''></a>"
        + "<input name='imageChooses[]' type='checkbox' value='" + path + "'>"
        + "</div>";
    return html;
}
$('#btnXoaAnhAlbum').click(function () {
    $.each($("input[name='imageChooses[]']:checked"), function () {
        $(this).parent().remove();
    });
});
$('#btnXoaAnhAlbumEdit').click(function () {
    var listID = "";
    $.each($("input[name='imageChooses[]']:checked"), function () {
        // $(this).parent().remove();
        var attr = $(this).attr('data-id');
        if (typeof attr !== typeof undefined && attr !== false) {
            listID += $(this).attr('data-id') + '-';
            $(this).parent().remove();
        } else {
            $(this).parent().remove();
        }
    });
    var hdListID = $('input[name=listIDDelete]').val();
    hdListID += listID;
    $('input[name=listIDDelete]').val(hdListID);
    // alert(listID);
});
$('#btnSubmitThemAlbum').click(function () {
    $.each($("input[name='imageChooses[]']"), function () {
        $(this).prop('checked', true);
    });
    $('#formThem').submit();
});
if ($('#btnBrowseAlbumCover').length) {
    var button1 = document.getElementById('btnBrowseAlbumCover');

    button1.onclick = function () {
        selectFileWithCKFinder('pathAlbumCover', 'showHinhAlbumCover');
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
if ($('#btnBrowseQuotationsCover').length) {
    var button1 = document.getElementById('btnBrowseQuotationsCover');

    button1.onclick = function () {
        selectFileWithCKFinder('pathQuotationCover','showHinhQuotationCover');
    }
}
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
