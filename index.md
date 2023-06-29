---
layout: page
---

<div width='100px' height='100px'>
<img src="/assets/images/logo.svg" style="float:right" width='50%'/>
</div>

## About

Kanidm is a simple and secure identity management platform, which provides services to allow other
systems and application to authenticate against. The project aims for the highest levels of
reliability, security and ease of use.

The goal of this project is to be a complete identity management provider, covering the broadest
possible set of requirements and integrations. You should not need any other components (like
Keycloak) when you use Kanidm. We want to create a project that will be suitable for everything from
personal home deployments, to the largest enterprise needs.

To achieve this we rely heavily on strict defaults, simple configuration, and self-healing
components.

The project is still growing and some areas are developing at a fast pace. The core of the server
however is reliable and we make all effort to ensure upgrades will always work.

Kanidm supports:

- OAuth2/OIDC Authentication provider for Web SSO
- Read only LDAPS gateway
- Linux/Unix integration (with offline authentication)
- SSH key distribution to Linux/Unix systems
- RADIUS for network authentication
- Passkeys / Webauthn for secure cryptographic authentication
- A self service web UI
- Complete CLI tooling for administration

If you want to host your own centralised authentication service, then Kanidm is for you!

### Latest Posts

{% for post in site.posts %}

- [{{ post.title }}]({{ post.url }}) ({{post.date| date_to_string}}) {% endfor %}
