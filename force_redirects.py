from pathlib import Path

base = Path('src') / 'main' / 'webapp'
files = [
    'home.jsp',
    'about.jsp',
    'book-ride.jsp',
    'contact.jsp',
    'dashboard.jsp',
    'drivers.jsp',
    'my-bookings.jsp',
    'privacy.jsp',
    'profile.jsp',
    'services.jsp',
]
for f in files:
    p = base / f
    if not p.exists():
        print(f'MISSING {p}')
        continue
    content = (
        '<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>\n'
        '<%\n'
        f'    response.sendRedirect(request.getContextPath() + "/new/{f}");\n'
        '    return;\n'
        '%>\n'
    )
    p.write_text(content, encoding='utf-8')
    print(f'REWRITTEN {p}')
