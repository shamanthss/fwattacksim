
# 
The Open Source Security Testing Tool [GitHub Repository](https://github.com/ch3332xr/fwattacksim.git)

Simple script to simulate various network attacks in a controlled environment.

## Firewall Attack Simulator

#### [1] Install Dependencies

Installs the necessary tools for running the attack simulations.

1. Run as ROOT
2. Update package lists:
   ```bash
   sudo apt update
   sudo apt install hydra hping3 tcpreplay ettercap-text-only
   git clone https://github.com/iagox86/dnscat2.git
   cd dnscat2
   make

#### [2] Start the Attack Simulation

1. Run as ROOT
2. Clone this repository:
   ```bash
   git clone https://github.com/ch3332xr/fwattacksim.git
   cd fwattacksim
   chmod +x firewall_attack_simulation.sh
   sudo ./firewall_attack_simulation.sh

#### The script will present you with a menu to choose the type of attack:
 
   Select an attack type:
   1) Brute Force
   2) Denial of Service (DoS)
   3) Replay Attack
   4) Man-in-the-Middle (MitM)
   5) DNS Tunneling

Simply enter the corresponding number for the attack you'd like to perform, and follow the on-screen instructions.


#### [3] Attacks Included

1. Brute Force Attack
Tool: Hydra
Description: Tries various username/password combinations to gain unauthorized access to a service.
2. DoS Attack
Tool: Hping3
Description: Floods the target system with packets to cause a denial of service.
3. Replay Attack
Tool: Tcpreplay
Description: Replays previously captured traffic to mimic legitimate network activity.
4. Man-in-the-Middle (MitM) Attack
Tool: Ettercap
Description: Spoofs ARP requests to intercept communications between devices on the network.
5. DNS Tunneling Attack
Tool: dnscat2
Description: Uses DNS queries to exfiltrate data from the target system.

#### How It Works

Each attack is launched through a specific tool, with inputs provided by the user. The tools are widely recognized for penetration testing and are available in most Linux distributions or can be compiled from source.

When you run the script, it will guide you through the process of setting up and launching the attack, including asking for the necessary parameters such as target IPs and wordlists.

#### Disclaimer
This tool is intended for educational and authorized security testing purposes only. Unauthorized use of this tool to attack networks or systems that you do not own or have permission to test is illegal.

By using this tool, you agree to use it responsibly and only for purposes you have authorization for.


#### License

This project is licensed under the MIT License.

[LICENSE](https://github.com/ch3332xr/fwattacksim/blob/main/license)

#### Contributing

Feel free to contribute! Submit a pull request or open an issue to report bugs, request features, or suggest improvements.
