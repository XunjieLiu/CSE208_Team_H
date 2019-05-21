window.onload = function () {
    var search = document.getElementById('open');
    search.onclick = function () {
        // Match url
        var url = {
            'Architecture': 'down_pages/arc.html',
            'Business': 'down_pages/busi.html',
            'Engineering': 'down_pages/eng.html',
            'Science': 'down_pages/sci.html',
            'Literature': 'down_pages/lit.html',
            'Other': 'down_pages/oth.html',

        }
        var key = document.getElementById('key').value;
        // No files found
        window.open(url[key] || 'search.html');
    }
}