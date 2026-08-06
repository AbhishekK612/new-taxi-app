from pathlib import Path

base = Path('src/main/webapp')
files = [
    'home.jsp',
    'about.jsp',
    'book-ride.jsp',
    'contact.jsp',
    'dashboard.jsp',
    'drivers.jsp',
    'my-bookings.jsp',
    'profile.jsp',
    'privacy.jsp',
    'services.jsp',
]

for f in files:
    path = base / f
    if not path.exists():
        print(f'skip missing {path}')
        continue
    content = (
        '<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>\n'
        '<%\n'
        f'    response.sendRedirect(request.getContextPath() + "/new/{f}");\n'
        '    return;\n'
        '%>\n'
    )
    path.write_text(content, encoding='utf-8')
    print(f'fixed {path}')
