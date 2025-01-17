<<<<<<< HEAD
# f5_tmos_ha_monitor

**f5_tmos_ha_monitor** is an Ansible-based monitoring tool that automates the monitoring of high availability (HA) status for F5 BIG-IP systems running TMOS (Traffic Management Operating System). It checks the health and synchronization status of F5 HA pairs, detects failover events, and provides real-time insights to ensure your F5 devices are operating optimally in a highly available configuration.

## Features

- **HA Pair Synchronization Status**: Monitors the synchronization between F5 BIG-IP devices in an HA pair.
- **Failover Event Detection**: Tracks and alerts on failover events to ensure high availability is maintained.
- **Device Health Check**: Monitors the status of each device in the HA pair (Active/Standby).
- **Integration with Ansible**: Seamlessly integrates into Ansible automation workflows.
- **Customizable Alerts & Reporting**: Provides real-time notifications and custom reports on HA pair status and device health.

## Prerequisites

To use this tool, you will need the following:

- **Ansible**: Version 2.9 or later.
- **F5 BIG-IP devices**: With TMOS running on your systems.
- **F5 Ansible Collection**: The official F5 Ansible Collection for managing BIG-IP devices.
- **Python**: Python 3.x is required to run the playbooks.

## Installation

### 1. Clone the Repository

```bash
git clone https://github.com/SalesAmerSP/f5_tmos_ha_monitor.git
cd f5_tmos_ha_monitor
```

### 2. Install Dependencies

This tool relies on the [F5 Ansible Collection](https://github.com/ansible-collections/f5networks.f5_modules). You can install the required dependencies using the following command:

```bash
ansible-galaxy collection install f5networks.f5_modules
```

### 3. Configure Your Ansible Inventory

Create an inventory file (e.g., `inventory.ini`) with your F5 devices:

```ini
[f5_devices]
f5_device_1 ansible_host=192.168.1.10
f5_device_2 ansible_host=192.168.1.11

[f5_devices:vars]
ansible_user=your_username
ansible_password=your_password
```

### 4. Configure the Playbook

Customize the `monitor_ha.yml` playbook to match your environment. You can modify parameters such as device names, monitoring thresholds, and notification settings.

## Usage

To run the monitoring playbook, use the following command:

```bash
ansible-playbook -i inventory.ini monitor_ha.yml
```

This playbook will check the HA status of the F5 devices in your inventory and report on their synchronization status, failover events, and overall health.

### Example Output

The playbook will output information about the HA pair's synchronization status and failover history, along with any issues detected:

```bash
TASK [Check HA pair synchronization] 
ok: [f5_device_1] => (item=None) => {
    "msg": "Synchronization between devices is healthy."
}

TASK [Check failover events]
ok: [f5_device_1] => (item=None) => {
    "msg": "No failover events detected."
}
```

## Alerts and Notifications

You can configure custom alerts to notify you if any issues are detected with the HA pair. This can be done by modifying the alert settings in the playbook. Options include sending email alerts, writing to a log file, or integrating with a monitoring tool.

## Troubleshooting

- **Authentication Issues**: Ensure that the correct `ansible_user` and `ansible_password` are specified in your inventory file.
- **Connectivity**: Make sure your Ansible control machine can reach the F5 devices over the necessary ports (usually 443 for HTTPS).
- **Module Errors**: Verify that the required F5 modules are installed correctly via `ansible-galaxy`.

## Contributing

Contributions are welcome! If you have suggestions, improvements, or bug fixes, please feel free to open an issue or create a pull request.

### How to Contribute

1. Fork this repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Open a pull request.
=======
# BIG-IP Clustering Health Check with Ansible

An Ansible-based solution for monitoring F5 BIG-IP device clusters, focusing on high availability and health metrics.

## Features

- Device Status Monitoring
  - Connectivity verification
  - CPU utilization verification
  - Memory usage verification
  - Connection statistics
- Cluster Configuration Discovery
  - Sync status verification
  - Traffic group state monitoring
  - Device group configuration checks
- Health Checks
  - Performance metrics polling
  - Configurable thresholds
  - Automated reporting
- Modular Architecture
  - Reusable roles
  - Customizable playbooks
  - Extensible design

## Prerequisites

1. **Python 3.8+**
2. **Ansible 2.12+** Follow the [official installation guide](https://docs.ansible.com/ansible/latest/installation_guide/index.html).
3. **Required Collections**:

   ```bash
   ansible-galaxy collection install f5networks.f5_modules
   ```

4. **Python Dependencies**:

   ```bash
   pip install -r requirements.txt
   ```

## Setup

1. Clone this repository:

   ```bash
   git clone https://github.com/yourusername/f5_tmos_high_availability_health_check.git
   cd f5_tmos_high_availability_health_check
   ```

2. Create Virtual Environment:

   ```bash
   python -m venv .venv
   source .venv/bin/activate
   pip install -r requirements.txt
   ```

3. Configure inventory (inventory/hosts)


>>>>>>> dev
