# test summary

- version: 21.1.2, dhcp: true, cluster: true, avi_password: auto // PASSED
- version: 21.1.2, dhcp: false, cluster: true, avi_password: auto // PASSED
- version: 21.1.2, dhcp: false, cluster: true, avi_password: static // PASSED
- version: 21.1.2, dhcp: true, cluster: true, avi_password: static // ?
- version: 21.1.2, dhcp: true, cluster: false, avi_password: auto // PASSED