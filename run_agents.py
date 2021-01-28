#!/usr/bin/python3
#
#
import os
import subprocess
import re
    #def run_ext_agents(agent_abs):
    #    ret = subprocess.call([agent_abs,])
    #    if ret:
    #        print("{}: failed".format(agent_abs))
    #    else:
    #        print("{}: success".format(agent_abs))
hc_list={}
red = "\033[1;31m"
key_format = "\033[1;34m" # Blue 
value_format = "\033[1;32m"    # Green
no_color = "\033[0m"

print(red,"************************")
print("Health Check Started !!")
print("************************",no_color)

for root, dirs, files in os.walk('./ext'):
   for f in files:
       agent_abs = "{}/{}".format(root, f)
       agent_exec=subprocess.run(agent_abs,capture_output='True')
       agent_out=agent_exec.stdout.decode()
       outcome=agent_out.split(',')
       hc_list[outcome[0]]=outcome[1]

# Print the complete Health Check List and OutComes
for key in hc_list:
    if re.search("OK",hc_list[key]):
        value_format="\033[1;32m"
    else:
        value_format="\033[1;31m"
    
    print(key_format, key, ' : ',value_format, hc_list[key])


print(red,"************************")
print("Health Check Finished !!")
print("************************",no_color)
