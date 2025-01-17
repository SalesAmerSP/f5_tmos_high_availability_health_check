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


