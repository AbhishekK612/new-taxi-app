from pathlib import Path
import os

def info(path):
    p = Path(path)
    if not p.exists():
        return f'{path}: MISSING'
    try:
        st = p.stat()
        return f'{path}: exists size={st.st_size} mtime={st.st_mtime}'
    except Exception as e:
        return f'{path}: ERROR {e}'

paths = [
    'src/main/webapp/home.jsp',
    'target/taxi-booking.war',
    'target/taxi-booking/home.jsp',
    'docker-compose.yml',
]
for p in paths:
    print(info(p))

print('\n--- docker compose ps ---')
os.system('docker compose ps > docker_ps.txt 2>&1')
print('docker ps written to docker_ps.txt')
print('\n--- curl home.jsp ---')
os.system('curl.exe -I -s http://localhost:9093/taxi-booking/home.jsp > curl_home.txt 2>&1')
print('curl result written to curl_home.txt')
print('\n--- curl new/home.jsp ---')
os.system('curl.exe -I -s http://localhost:9093/taxi-booking/new/home.jsp > curl_new_home.txt 2>&1')
print('curl new result written to curl_new_home.txt')
