import subprocess
from dotenv import load_dotenv
import os

config = load_dotenv(".env")

local_port = 5000


remote_host = os.environ.get("IP")
remote_port = 5000

ssh_username = os.environ.get("USER_NAME")
ssh_host = os.environ.get("IP")
ssh_port = 8080

# controlsocket
control_socket = f'/tmp/ssh-{ssh_username}@{ssh_host}-{ssh_port}-control'


ssh_command = f'ssh -M -S {control_socket} -L {local_port}:{remote_host}:{remote_port} -p {ssh_port} {ssh_username}@{ssh_host}'
ssh_process = subprocess.Popen(ssh_command, shell=True)


ssh_process.wait()
