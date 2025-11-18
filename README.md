# 🔐 Projeto de Auditoria com Kali Linux e Medusa

## 🧠 Objetivo
Simular ataques de força bruta em ambientes vulneráveis para fins educacionais e propor medidas de mitigação.

## 🖥️ Ambiente
- Kali Linux (atacante)
- Metasploitable 2 (alvo)
- DVWA (Web App vulnerável)
- VirtualBox com rede host-only

## ⚔️ Ataques Realizados
### 1. FTP Brute Force
- Ferramenta: Medusa
- Comando: `medusa -h ...`
- Resultado: acesso obtido com usuário `admin`

### 2. DVWA Web Form
- Ferramenta: Medusa / Python Script
- Técnica: automação de formulário
- Resultado: credenciais válidas encontradas

### 3. SMB Password Spraying
- Enumeração: `enum4linux`
- Ataque: `medusa -h ...`
- Resultado: acesso ao compartilhamento

## 📂 Wordlists
- `wordlist.txt`: senhas comuns
- `users.txt`: nomes de usuários extraídos

## 🛡️ Recomendações de Mitigação
- Implementar bloqueio após tentativas falhas
- Usar autenticação multifator
- Monitorar logs de acesso
- Atualizar serviços vulneráveis

## 📸 Evidências
Imagens disponíveis na pasta `/images`

## 📚 Referências
- [Kali Linux](https://www.kali.org/)
- [DVWA](http://www.dvwa.co.uk/)
- [Medusa](https://github.com/jmk-foofus/medusa)
- [Nmap](https://nmap.org/)
