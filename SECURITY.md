# Security Policy

## Supported Versions
<!-- Use this section to tell people about which versions of your project are
currently being supported with security updates -->

:white_check_mark: Currently Supported  
:heavy_minus_sign: Still Supported with Planned Deprecation  
:x: Not Supported  

| Version | Supported          |
| ------- | ------------------ |
| > 1.0.x | :white_check_mark: |
| > 0.12.x | :white_check_mark: |
|  0.11.x  | :heavy_minus_sign: |
| < 0.10   | :x:                |

## Reporting a Vulnerability

Please [submit a "\[SECURITY\] Bug Report"][submit an issue] that details the security concern (and ideally steps to take to fix or mitigate risk). If an issue is not responded to within 1 month, please
assume that this repo is stale and will not be updated.

If a suggested fix is accepted and applied, your name will be added to the contributors list in the README. If the suggested fix is declined, we will attempt to provide an explanation on the
Github issue created before closing the issue. You may or may not get notified of this via email depending on your notification preferences.


## Security Design Principles (from Common Core Initiative)
See Also: [Protection of Infomation in Computer Systems][Saltzher & Schroeder]

- **Economy of mechanism**  
_keep the design as simple and small as practical, e.g., by adopting sweeping simplifications_

- **Fail-safe defaults**  
_access decisions should deny by default, and projects' installation should be secure by default_

- **Complete mediation**  
_every access that might be limited must be checked for authority and be non-bypassable_

- **Open design**  
_security mechanisms should not depend on attacker ignorance of its design, but instead on more easily protected and changed information like keys and passwords_

- **Separation of privilege**  
_ideally, access to important objects should depend on more than one condition, so that defeating one protection system won't enable complete access. E.G., multi-factor authentication, such as requiring both a password and a hardware token, is stronger than single-factor authentication_

- **Least privilege**  
_processes should operate with the least privilege necessary_

- **Least common mechanism**  
_the design should minimize the mechanisms common to more than one user and depended on by all users, e.g., directories for temporary files_

- **Psychological acceptability**  
_the human interface must be designed for ease of use - designing for "least astonishment" can help_

- **Limited attack surface**  
_the attack surface - the set of the different points where an attacker can try to enter or extract data - should be limited_

- **Input validation with allowlists**  
_inputs should typically be checked to determine if they are valid before they are accepted; this validation should use allowlists (which only accept known-good values), not denylists (which attempt to list known-bad values))_

[submit an issue]: https://github.com/devlinjunker/template.github.semver/issues/new?template=bug_report.md&labels=bug,-priority,security&title=[SECURITY]
[Saltzher & Schroeder]: https://web.mit.edu/Saltzer/www/publications/protection/
