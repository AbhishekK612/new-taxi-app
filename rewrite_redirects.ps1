$files = @(
    'home.jsp',
    'about.jsp',
    'book-ride.jsp',
    'contact.jsp',
    'dashboard.jsp',
    'drivers.jsp',
    'my-bookings.jsp',
    'profile.jsp',
    'privacy.jsp',
    'services.jsp'
)
$base = Join-Path $PSScriptRoot 'src\main\webapp'
foreach ($file in $files) {
    $path = Join-Path $base $file
    if (Test-Path $path) {
        $content = @"
<%@ page contentType=\"text/html; charset=UTF-8\" pageEncoding=\"UTF-8\" %>
<%
    response.sendRedirect(request.getContextPath() + \"/new/$file\");
    return;
%>
"@
        Set-Content -Path $path -Value $content -Encoding utf8
        Write-Output "rewrote $path"
    }
}
