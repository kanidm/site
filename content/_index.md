+++
title = "Kanidm"
+++


Kanidm is a simple and secure identity management platform, allowing other applications and services
to offload the challenge of authenticating and storing identities to Kanidm.

The goal of this project is to be a complete identity provider, covering the broadest possible set
of requirements and integrations. You should not need any other components (like Keycloak) when you
use Kanidm - we already have everything you need!

To achieve this we rely heavily on strict defaults, simple configuration, and self-healing
components. This allows Kanidm to run from small home labs, for families, small business, and all
the way to the largest enterprise needs.

If you want to host your own authentication service, then Kanidm is for you!

## Features

- Webauthn (passkeys) for secure cryptographic authentication
- OAuth2/OIDC Authentication provider for web SSO
- OAuth Application Portal/Gateway allowing easy access to linked applications
- Linux/UNIX integration with offline authentication
- SSH key distribution to Linux/UNIX systems
- RADIUS for network and VPN authentication
- Read only LDAPS gateway for Legacy Systems
- Complete CLI tooling for Administration
- User Self Service via the WebUI

## Documentation / Getting Started / Support

If you want to read more about what Kanidm can do, you should [read our documentation](https://kanidm.github.io/kanidm/stable/).

A quick [getting start guide](https://kanidm.github.io/kanidm/stable/quickstart.html) is available.

We also have a set of
[support guidelines](https://kanidm.github.io/kanidm/master/support.html)
for what the project team will support.

## Code of Conduct / Ethics

All interactions with the project are covered by our [code of conduct](/code-of-conduct/).

When we develop features we follow our projects guidelines on [rights and ethics](https://kanidm.github.io/kanidm/master/developers/developer_ethics.html).

## Getting in Contact

We have a [Gitter community channel](https://gitter.im/kanidm/community) where project members are always happy to answer questions.

Alternately you can open a new [Github discussion](https://github.com/kanidm/kanidm/discussions).

## What does Kanidm mean?

Kanidm is a portmanteau of 'Kani' and 'IDM'. Kani is Japanese for crab, related to Rust's mascot
ferris the crab. identity management is often abbreviated to 'IDM', and is a common industry term
for these services.

Kanidm is pronounced as "kar - nee - dee - em".

## How does Kanidm compare to other similar services?

Good question! Please [read the comparison documentation](/comparisons/).
