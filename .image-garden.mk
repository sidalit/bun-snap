# SPDX-FileCopyrightText: Canonical Ltd.
# SPDX-License-Identifier: MIT

define DEBIAN_CLOUD_INIT_USER_DATA_TEMPLATE
$(CLOUD_INIT_USER_DATA_TEMPLATE)
- snap wait system seed.loaded
- snap install --beta snapd
- snap install core24
packages:
- snapd
endef

define UBUNTU_CLOUD_INIT_USER_DATA_TEMPLATE
$(CLOUD_INIT_USER_DATA_TEMPLATE)
- snap wait system seed.loaded
- snap install --beta snapd
- snap install core24
packages:
- snapd
endef

define FEDORA_CLOUD_INIT_USER_DATA_TEMPLATE
$(CLOUD_INIT_USER_DATA_TEMPLATE)
- snap wait system seed.loaded
- snap install core24
- ln -s /var/lib/snapd/snap /snap
packages:
- snapd
endef
