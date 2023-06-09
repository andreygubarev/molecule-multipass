# `molecule-multipass`

## Description
This is a `molecule` plugin for using `multipass` as a provider.

## Usage
```bash
pip install molecule-multipass
```

### Dependencies

Install `multipass`:
```bash
brew install --cask multipass
```

## Example scenario
```bash
molecule init scenario scenario_name -d molecule_multipass
```

## Example `molecule.yml`
```yaml
---
dependency:
  name: galaxy
driver:
  name: molecule_multipass
platforms:
  - name: instance
provisioner:
  name: ansible
verifier:
  name: ansible
```

# Reference
https://github.com/andreygubarev/molecule-multipass
> Source code for molecule-multipass

https://pypi.org/project/molecule-multipass/
> Molecule Multipass Provider

https://www.ansible.com/
> Ansible is a suite of software tools that enables infrastructure as code.

https://molecule.readthedocs.io/
> Molecule project is designed to aid in the development and testing of Ansible roles.

https://multipass.run/
> Ubuntu VMs on demand for any workstation

https://github.com/ansible-community/molecule-libvirt
> Molecule LibVirt Provider

https://github.com/ansible-community/molecule-plugins
> Collection on molecule plugins
